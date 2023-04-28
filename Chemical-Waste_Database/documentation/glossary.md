# ER diagram Documentation:
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#### Relationships:
Industry-Produces-Chemical (One-To_many)
- Industry can produce many chemicals or no chemicals

Chemical-Pollutes-Environment(Many-To-One)
- Many or no chemicals can pollute the Environment
#### Attributes:
Each Indutry has one Location 
- unique
- plural


Each Industry can be of many types
- singular
- unique

Each Chemical has only one ID
- unique
- plural


Each Chemical is of different type
- unique
- singular


Each Chemical can have one name
- plural


Environment have many Locations
- plural
- unique


Envirnment can have many chemicals but the chemical have only one ID
- plural
- unique


Envirnment have many counties but each country have one name
- singular

Entity name: Industry
Synonyms: Business, Production
Description: An industry is an embodiemnt of companies that work to produce the same good or service.

Entity name: Chemical
Synonym: Toxins, waste
Description: A chemical is anythiing that is the by product of the industy that harms the environment.

Entity name: Environment
Synonym: Habitat, nature
Description: An environment is anything that is receiving the effects of the chemicals. It can range from rivers to oceans to forrest.

Entity name: Epa
Synonym: Agency
Description: The Epa is an agency that sets restrictions on industries on their by product waste. All the chemicals that leave a certain industry go on to harm the environment.

#### Dependent Entities and Dependency Relationships
**Chemical**
industry_produces_chemicals

**Industy**
epa_regulates_industry

**EPA**
industry_follows_epa

**Environment**
chemical_pollutes_environment

**Register**
login_saves_register

**Login**
epa_reports_login

### Attribute Types
**Industry**
type VARCHAR(30)
location VARCHAR(10)

**Chemical**
type VARCHAR(30)
name VARCHAR(30)
quatity SMALLINT

**Environment**
chemicalid INTEGER
envtype VARCHAR(30)

**EPA**
chemicalname VARCHAR(30)
envtype VARCHAR(30)

**Login**
password VARCHAR(50)

**Register**
email VARCHAR(30)
password VARCHAR(50)
phone SMALLINT

### Supertypes, Subtypes and Partitions
No use on project

### Cascade/Restrict Dependency Relationships

**industry_produces_chemicals**
Delete Cascade

**epa_regulates_industry**
Delete Cascade

**industry_follows_epa**
Delete Cascade

**chemical_pollutes_environment**
Delete Cascade

**login_saves_register**
Delete Cascade

**epa_reports_login**
Delete Cascade

**Cascade/Restrict Foreign Keys**
Delete Cascade Username

### ER Diagram : 

![logical design](https://user-images.githubusercontent.com/90651416/138149076-8cff46d0-d54c-42b9-8983-902673a5d7dd.png)

