#' Instructions for completing the metadata templates
#'
#' @description  
#'     A guide to completing the metadata templates and configuration file
#'     created by \code{copy_templates}.
#'
#' @usage run_guide()
#'
#' @return
#'     A series of prompts are displayed in the Console window describing steps
#'     and rules to be followed when filling out the metadata templates.
#'     Press <enter> to proceed to the next step.
#'
#' @details
#' 
#'     Additional information for completing each step:
#'     
#'     \emph{"Move your data table(s) to the working directory."} Move your datasets
#'     to the working directory and rename them following the convention 
#'     'datasetname_datatablename.dat', where datasetname is the name of your
#'     dataset (e.g. gleon_chloride), datatablename is the name of your data 
#'     table (e.g. lake_characteristics), and .dat is the file extension of
#'     your data table (e.g. .csv). In this example the data table name is
#'     gleon_chloride_lake_characteristics.csv.
#'     
#'     \emph{"Write protect your data table(s)."} Write protect your data table(s) to
#'     prevent Microsoft Excel (used in the course of creating EML for your 
#'     dataset) from automatically converting date time fields to an Excel 
#'     preferred format. To do this, right click the file and select 
#'     'Read-only' if using Windows OS or 'locked' for Mac OS.
#'     
#'     \emph{"Write an abstract for your dataset ..."} Write an abstract for your
#'     dataset in the file datasetname_abstract.docx (e.g.
#'     gleon_chloride_abstract.docx). The abstract should cover what, why, 
#'     when, where, and how. Do not use special characters, symbols, or special
#'     formatting.
#'     
#'     \emph{"Place additional information ..."} Place additional info in the file 
#'     datasetname_additional_info.docx (e.g. 
#'     gleon_chloride_additional_info.docx). This is a good place to present 
#'     additional text based information that doesn't fall under the scope of
#'     the abstract or methods (e.g. A list of research articles derived from
#'     this dataset). Do not use special characters, symbols, or special formatting. 
#'     Delete this file if you have no additional information to present.
#'     
#'     \emph{"Select an intellectual rights license for your dataset."} Select an
#'     intellectual rights license. We have two recommendations: 
#'     'datasetname_cc_by_4.0_intellectual_rights.docx' and
#'     'datasetname_cc0_1_intellectual_rights.docx'. Do not edit the text of
#'     these files. Delete the file you will not be using. Rename the file you
#'     will be using to match the convention 
#'     datasetname_intellectual_rights.docx (e.g. 
#'     gleon_chloride_intellectual_rights.docx). Delete the file you will not be using.
#'     
#'     \emph{"Write the methods for your dataset ..."} Write the methods for your
#'     dataset in the file datasetname_methods.docx (e.g. 
#'     gleon_chloride_methods.docx). Please be specific, include instrument 
#'     descriptions, or point to a protocol online. If this is a data 
#'     compilation please specify datasets used, preferably their DOI or URL 
#'     plus general citation information. Do not use special characters, 
#'     symbols, or special formatting.
#'     
#'     \emph{"Enter personnel information for your dataset ..."} Enter personnel 
#'     information for your dataset in the file datasetname_personnel.xlsx 
#'     (e.g. gleon_chloride_personnel.xlsx). Valid entries for role are: 
#'     "creator" = dataset creator, "pi" = principal investigator, "contact" = 
#'     dataset contact. Any other entries into the 'role' column are 
#'     acceptable and will be defined under the associated party element of 
#'     this dataset. If a person serves more than one role, add this role as 
#'     an additional line. A dataset creator, contact, and principal 
#'     investigator are mandatory. Do not use special characters, 
#'     symbols, or special formatting.
#'     
#'     \emph{"Add data table attributes ..."} Add data table attributes to the file 
#'     datasetname_datatablename_attributes_draft.xlsx 
#'     (e.g. gleon_chloride_lake_characteristics_attributes_draft.xlsx). 
#'     Create an attributes file for each data table. Do not use special 
#'     characters, symbols, or special formatting in this file. Instructions 
#'     for completing the attribute table are as follows:
#'     \itemize{
#'         \item \strong{attributeDefinition} Define the attribute. Be 
#'         specific, it can be lengthy. Do not use special characters or 
#'         formatting. 
#'         \item \strong{class} Specify the attribute class. This is the type 
#'         of value stored under the attribute. Valid options are: "numeric" 
#'         for numeric data, "character" for any data containing text or 
#'         symbols, and "Date" for date time data. The list of valid options 
#'         are case sensitive. If a attribute has class numeric or Date, then 
#'         all values of this attribute must be either numeric or Date. If any 
#'         character strings are present in the numeric attribute, it must be 
#'         classified as character. Similarly if any values of Date do not 
#'         match the date time format string (details below), then this 
#'         attribute must be classified as character. 
#'         \item \strong{unit} If an attributes class is numeric, then you must
#'         enter units for this attribute. If the attribute is numeric but does 
#'         not have units, enter "dimensionless" in the unit field. If the 
#'         attribute class is a character or vector, then leave the unit field 
#'         blank. If the attribute is numeric and has units search the standard unit 
#'         dictionary (opened in the source window) for the unit of interest
#'         and enter the unit "name" as it appears in the  dictionary. 
#'         Unit names are case sensitive. If you cannot find a unit in the 
#'         dictionary, enter the unit in the file 
#'         datasetname_custom_units.xlsx. Rename this file to accord with the naming 
#'         convention (e.g. gleon_chloride_custom_units.xlsx). Valid custom units must be 
#'         convertible to SI Units (i.e. International System of Units). If it 
#'         cannot be converted then list it in the attribute defintion field 
#'         and enter "dimensionless" in the unit field. To create a custom 
#'         unit, define the:
#'         \itemize{
#'             \item \strong{id} This is equivalent to the unit name. Reference 
#'             the standard unit dictionary formatting.
#'             \item \strong{unitType} The type of unit being defined. 
#'             Reference the dictionary for examples.
#'             \item \strong{parentSI} The SI equivalent of the id you have 
#'             entered.
#'             \item \strong{multiplierToSI} This is the multiplier to convert 
#'             from your custom unit to the SI unit equivalent.
#'             \item \strong{description} A description of the custom unit. 
#'             Reference the dictionary for examples.
#'         }
#'         \item \strong{dateTimeFormatString} Enter the date time format 
#'         string for each attribute of "Date" class. Remember, a class of Date 
#'         specifies the attribute as a date, time, or datetime. Enter the 
#'         format string in this field. If the attribute class is not "Date", 
#'         leave this field blank. Below are some general rules for 
#'         constructing format strings. Additional information is listed under
#'         "dateTime-eml-attribute" of the current EML specification 
#'         (https://knb.ecoinformatics.org/#external//emlparser/docs/index.html).
#'         Valid date time formats are a combination of date, time, and time 
#'         zone strings:
#'         \itemize{
#'             \item \strong{Date format strings:} YYYY-MM-DD, YYYY, YYYYMMDD,
#'             YYYY-MM, YYYYMM, YYYY-Www, YYYYWww, YYYY-Www-D, YYYYWwwD, 
#'             YYYY-DDD, YYYYDDD; where "YYYY" is year, "MM" is month, "DD" is 
#'             day of month, "W" (capitalized) denotes the following value 
#'             "ww" is the week of year, and "DDD" is day of year.
#'             \item \strong{Time format strings:} hh:mm:ss.sss, hhmmss.sss,
#'             hh:mm:ss, hhmmss, hh:mm, hhmm, hh; where "hh" is hour (in 24 hr
#'             clock), "mm" is minute, "ss" is second, and "ss.sss" is decimal
#'             second.
#'             \item\strong{Time zone format strings:} Z, +hh:mm, +hhmm, +hh,
#'             -hh:mm, -hhmm, -hh; where "Z" (capitalized) is Coordinated 
#'             Universal Time, and "+" and "-" denote times ahead and behind UTC
#'             respectively.
#'         }
#'         If reporting a date without time, select one of the date format 
#'         strings. If reporting a date and time, select one date and one time 
#'         format string and combine with a single space (e.g. 
#'         "YYYY-MM-DD hh:mm") or with a "T" (e.g. "YYYY-MM-DDThh:mm"). If 
#'         reporting a date and time, it is recommended that a time zone 
#'         specifier be appended without a space 
#'         (e.g. "YYYY-MM-DD hh:mm-hh:mm", or "YYYY-MM-DDThh:mm-hh:mm").
#'         \item \strong{missingValueCode} If a code for 'no data' is used,
#'         specify it here (e.g. NA, -99999).
#'         \item \strong{missingValueCodeExplanation} Define the missing value 
#'         code here.
#'     }
#'    
#'     \emph{"Fill out the file eml_configuration.R"} Provide additional 
#'     information about your dataset. Detailed instructions are listed as 
#'     comments in this file.
#'     
#'     \emph{"Make sure all files of the working directory are closed."} Some 
#'     functions will error out if these files are open.
#'
#' @export
#'
#' @seealso \code{\link{copy_templates}} to copy metadata templates to the 
#'     dataset working directory.


run_guide <- function() {
  
  #library("EML")
  
  # Additional details are presented in the R Documentation of this function
  
  readline(paste("Details for each of the following steps are found in the documentation for this function.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Move data tables to the working directory
  
  readline(paste("Move the data table(s) to the working directory.",
                 "\n", "Rename the files with the recommended convention.",
                 "\n", "See R Documentation of run_guide() for details.",
                 "\n", "Do this for each data table.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Write protect data tables
  
  readline(paste("Write protect your data table(s).",
                 "\n", "Right click on the data table file.",
                 "\n", "Select 'Read-only' for Windows OS.",
                 "\n", "Select 'locked' for Mac OS.",
                 "\n", "Click 'OK'.",
                 "\n", "Do this for each data table.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")

  # Create abstract
  
  readline(paste("Write an abstract for your dataset in the file datasetname_abstract.txt.",
                 "\n", "Rename this file following the naming convention.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Additional info
  
  readline(paste("Place additional information in datasetname_additional_info.txt.",
                 "\n", "Follow the file naming convention if you will be using it.",
                 "\n", "Delete this file if you have no additional information to present.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Select an intellectual rights license
  
  readline(paste("Select an intellectual rights license for your dataset.",
                 "\n", "Rename the one you choose and follow the naming convention.",
                 "\n", "Delete the file you do not want.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Add methods
  
  readline(paste("Write the methods for your dataset in the file datasetname_methods.txt.",
                 "\n", "Rename this file following the naming convention.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Add personnel information
  
  readline(paste("Enter personnel information for your dataset in the file datasetname_personnel.txt.",
                 "\n", "Rename this file following the naming convention.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Add table attributes (draft)
  
  standardUnits <- get_unitList()
  View(standardUnits$units)
  
  readline(paste("Add data table attributes to the file datatablename_attributes_draft.txt.",
                 "\n", "The standard units dictionary has been opened for you.",
                 "\n", "Create an attributes file for each data table and rename following convention.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Fill out the configuration file
  
  readline(paste("Fill out the file eml_configuration.R.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Close all open files
  
  readline(paste("Make sure all files of the working directory are closed.",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
  # Green light to run other functions of this package
  
  readline(paste("Now you can use these functions:",
                 "\n", "define_factors()",
                 "\n", "extract_geocoverage()",
                 "\n", "create_eml()",
                 "\n",
                 "Press <enter> when done.",
                 sep = ""))
  writeLines("\n")
  
}
