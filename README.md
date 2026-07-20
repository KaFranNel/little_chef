# Little Chef's Library Database

This repository contains the SQL scripts, database design artifacts, and project documentation for the **Little Chef's Library Database**, a system designed to connect children's literacy with culinary education. The project demonstrates full-cycle database development including conceptual modeling, logical design, physical implementation, sample data loading, and query development.

---

## 📘 Project Overview

The Little Chef's Library Database models relationships between:

- Books  
- Recipes  
- Ingredients  
- Themes  
- Participants  
- Cooking sessions  

The system supports:

- Book–recipe matching  
- Participant tracking (reading level, dietary restrictions, cooking skill)  
- Session scheduling and outcome recording  
- Allergen-aware recipe selection  
- Progress monitoring and reporting  

This project demonstrates SQL proficiency through schema design, table creation, relational modeling, indexing, sample data insertion, and query development.

---

## Files Included

### SQL Scripts
- **little_chef_tables.sql**  
  Base DDL script used to create all tables in the database.

- **little_chef_alter_table.sql**  
  ALTER TABLE statements applied after initial creation to refine constraints and relationships.

- **little_chef_sample_data.sql**  
  Sample data inserts used for testing and demonstrating database functionality.

- **query_1.sql**  
  Example SQL query demonstrating joins and filtering.

- **query_2.sql**  
  Additional SQL query used for project requirements.

### Database Design
- **EER_Diagram.png**  
  Exported entity‑relationship diagram showing tables, attributes, primary keys, foreign keys, and relationships.

- **ER_little_chef.mwb.bak**  
  MySQL Workbench model backup containing the full EER diagram and schema design.

### Documentation
- **Project Proposal-1.pdf**  
  Initial project proposal outlining objectives, use cases, and functional requirements.

- **ITSC-3160-Sprint 1-1.pdf**  
  Sprint 1 deliverables: requirements analysis, ER modeling, normalization, and schema creation.

- **ITSC-3160-Sprint 2-3.pdf**  
  Sprint 2 deliverables: test data loading, query development, performance tuning, and documentation.

---

## Technologies Used
- MySQL Workbench  
- MySQL Server  
- SQL (DDL, DML, DQL)  
- EER Modeling  

---

## Notes
These SQL files are provided for review and demonstration of database design and SQL development skills. They may require MySQL configuration to execute depending on environment setup.

---

## 👩‍💻 Author
**Kaylynn Francisco-Nelson**  
ITSC 3160 — Database Design & Implementation  
University of North Carolina at Charlotte
