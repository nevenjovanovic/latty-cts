# Latty-cts XQuery Scripts
We are following the model in [capitains.github.io/pages/guidelines](http://capitains.github.io/pages/guidelines). For our database and XQuery processor we use [BaseX](http://basex.org/).

## Scripts for cleaning up the XML files:
+ [makeKeysUniform](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/makeKeysUniform.xq) Makes the key attribute values of the author element uniform by eliminating the 'Tyrol00000' from some works
+ [identifyAnonAuthFiles](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/identifyAnonAuthorFiles.xq) Creates a unique ID for each work by an anonymous author and inserts that ID into the title element
+ [anonAuthWorks](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/anonAuthWorks.xq) Copies works that have anonymous authors
+ [identifyMultiAuthFiles](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/identifyMultiAuthFiles.xq) Creates a unique ID for each work with multiple authors and inserts that ID into the title element
+ [multiAuthWorks](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/multiAuthWorks.xq) Copies works that have multiple authors
+ [addXMLbaseAttribute](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/addXMLbaseAttribute.xq) Creates an xml:base attribute and adds it to the text element for simple cases (i.e. works by a single known author)
+ [addXMLbaseAttributeForComplexCases](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/addXMLbaseAttributeForComplexCases.xq) Creates an xml:base attribute and adds it to the text element for complex cases (i.e. works by anonymous or multiple authors)
+ [makeXMLbaseLowerCase](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/makeXMLbaseLowerCase.xq) Makes the xml:base attribute uniform by converting all letters to lower case
+ [removeIDfromXMLbase](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/removeIDfromXMLbase.xq) Makes the xml:base look better by removing 'id' from the work urn
+ [deleteEncodingDesc](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/deleteEncodingDeskElement.xq) Deletes existing Encoding elements from the database
+ [insertEncodingDesc](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/insertEncodingDesc.xq) Creates an encodingDesc element for each edition
+ [deleteExistingNattributes](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/deleteExistingNattributes.xq) Deletes existing n attributes from the database
+ [insertNattribute](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/insertNattribute.xq) Creats n attributes for all descendants of the text element

## Scripts for creating textgroup directories:
+ [textgroup](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/textgroup.xq) Declares the 'ti' namespace for textgroups
+ [createTextGroupDirectory](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/createTextGroupDirectory.xq) Creates a directory for each textgroup (i.e. author)
+ [writeCTSxmlForTextgroup](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/writeCTSxmlForTextgroup.xq) Creates a cts xml file with metadata about a textgroup

## Scripts for creating work directories:
+ [createWorkDirectories](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/createWorkDirectories.xq) Creates a directory for each work inside of the corresponding textgroup
+ [moveDocsToWorkDirs](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/moveDocsToWorkDirs.xq) Moves the xml file for each work into the corresponding directory
+ [structure](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/structure.xq) Provides the base structure for cts xml files containing metadata about a work
+ [writeCTSxmlForWork](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/writeCTSxmlForWork.xq) Creates a cts xml file with metadata about a work
