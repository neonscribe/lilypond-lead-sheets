from pypdf import PdfReader, PdfWriter

import pypdf

def extract_internal_link_text(pdf_path):
    reader = pypdf.PdfReader(pdf_path)
    results = []

    for page_idx, page in enumerate(reader.pages):
        # 1. Check if the page contains any annotations
        if "/Annots" not in page:
            continue
            
        annotations = page["/Annots"]
        
        for annot in annotations:
            annot_obj = annot.get_object()
            
            # 2. Filter for Link annotations (/Subtype == /Link)
            if annot_obj.get("/Subtype") == "/NameObject: /Link" or annot_obj.get("/Subtype") == "/Link":
                # Isolate the target boundaries: [x_min, y_min, x_max, y_max]
                rect = annot_obj.get("/Rect")
                if not rect:
                    continue
                
                # Check if it's an internal destination link (/A entry with /S == /GoTo)
                action = annot_obj.get("/A")
                is_internal = False
                
                if action:
                    action_obj = action.get_object()
                    if action_obj.get("/S") == "/GoTo":
                        is_internal = True
                # Alternative format: Direct /Dest entry implies an internal link target
                elif "/Dest" in annot_obj:
                    is_internal = True
                
                if is_internal:
                    x_min, y_min, x_max, y_max = [float(coord) for coord in rect]
                    
                    # 3. Create a spatial visitor function to capture bounded text
                    link_text_parts = []
                    
                    def visitor_link_text(text, cm, tm, font_dict, font_size):
                        # tm[4] and tm[5] represent the X and Y coordinates of the text block
                        text_x = tm[4]
                        text_y = tm[5]
                        
                        # Verify if the text location falls within the link rectangle
                        if x_min <= text_x <= x_max and y_min <= text_y <= y_max:
                            if text.strip():
                                link_text_parts.append(text)

                    # Execute extraction bounded by our spatial filter rules
                    page.extract_text(visitor_text=visitor_link_text)
                    full_link_text = "".join(link_text_parts).strip()
                    
                    if full_link_text:
                        results.append({
                            "page": page_idx + 1,
                            "text": full_link_text,
                            "coordinates": (x_min, y_min, x_max, y_max),
                        })
                        
    return results

# Execution Example
pdf_file = "Spring Songs.pdf"
extracted_links = extract_internal_link_text(pdf_file)

for link in extracted_links:
    print(f"Page {link['page']} \n Text: '{link['text']}' \n Bounding Box: {link['coordinates']}")


"""
writer = PdfWriter(clone_from="crazyones.pdf")

# Add a top-level bookmark
writer.add_outline_item(
    title="Introduction",
    page_number=0
)

writer.write("simple-example.pdf")
"""
