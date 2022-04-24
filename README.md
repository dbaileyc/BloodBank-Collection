# BloodBank-Collection

We developed a blood bank collection database that keeps track of the number of donors and types of donations that occur at a blood bank as well as the blood bank inventory. The database stores a donor’s information, including their name, donor ID, address, contact number, age, weight, blood type, and last donation date. Each donor has a donor ID that acts like a social security number in that it is unique to each individual donor. A donor receives a randomly generated numerical donation ID that is unique to each donation; this donation number, along with their unique donor ID, is used to link a donor to their donation. A donor must be at least 16 years old and 110 pounds in order to be eligible to donate blood at the blood bank. If a donor knows they have any one of the following infections or pre-existing conditions, they are not permitted to donate blood: Hepatitis viruses B and C, Human immunodeficiency virus (HIV), Human t-lymphotropic virus (HTLV) I and II, Syphilis, West Nile Virus, Chagas Disease. While the database will not record whether a donor is turned away, there are certain restrictions on how frequently a donor can provide a donation to a blood bank. For instance, according to the Mayo Clinic, whole blood donations can occur every 56 days at a minimum, or up to six times a year without the donor experiencing adverse effects. The database will track a donor’s donation history and alert the blood bank if a donor is not eligible to give a donation. While there are other types of donations that donors can give to a blood bank, such as an apheresis donation, we are assuming that all donors will only be providing whole blood donations to this blood bank.

The database also tracks information about a donation instance, including the donor ID and donation number, the donor’s blood type, the volume of donation, and the donation date. The name, address, contact information, and unique ID of the blood bank is stored in the database, along with the inventory the blood bank has on site for each blood type, namely the volume of inventory for each blood type. We are assuming this fictional blood bank was established when this project began, which means there is no inventory prior to the addition of the donor data created in this project. When a new donation entry is created or updated, the inventory level of a particular blood type in the blood bank is updated accordingly.
 
 
The database contains 25 donors, but two do not meet the age or weight requirements, so only 23 will be displayed. (Missing Donor_ID: 576000001, 576000011)

(The SQL  is designed to automatically eliminate those who do not meet the required age or weight requirements.)
weightLBS integer not null CHECK (weightLBS>=110), 
donor age integer not null CHECK (donor age>=16),

There are 15 Eligible Donors and 8 Ineligible Donors 

Because the Donation Table is only intended to store the information of eligible donors, there are only 15 entries. 

The BBInventory BBVolumept differs from the donation volumept in that it is used to track multiple donations (pints) whereas the donation table only tracks one donation.


