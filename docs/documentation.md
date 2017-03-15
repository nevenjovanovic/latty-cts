# Producing CTS version of Tyrolean Neo-Latin texts (Latinitas Tyrolensis)

## Our Collection
* Unlike the “classical” Greek and Latin literature (the corpus of works preserved from 750 BC to 500 AD), Neo-Latin texts do not have canonical (standard, widespread) citation schemes.  
* For our digital collection, this lack of established citation schemes has its advantages and disadvantages.  On the one hand, there are no complicated citation systems to be reproduced.  On the other hand, we have to develop and implement a citation scheme which will be machine actionable and ideally also understandable to humans.  
* To accomplish our goal we followed the guidelines of [CITE Architecture](http://cite-architecture.github.io/) and of the [CapiTainS tools suite](http://capitains.github.io/pages/guidelines) (for the directory structure and some naming conventions).

## Our Scripts
* We created a database and edited our collection in BaseX.
* A list of all the XQuery scripts used and their descriptions can be found [here](https://github.com/nevenjovanovic/latty-cts/blob/master/scripts/scripts.md).  

## Cleaning Up Exisitng Files
* We started with existing xml files of the Tyrolean texts.
* These files already contained some metadata which we used when possible.
* We standardized the 'key' attribute values from each author element for works with one author.
* We created these 'key' values for works with anonymous or multiple authors.  
* We inserted an 'encodingDesc' element for each work.  
* We inserted an 'xml:base' attribute to each text element which includes the citation up to the level of the edition:  `urn:cts:latty:aemilianus01.latty2570222.latty-lat1:` 
* In the above example `urn:cts:latty:` specifies that this is a urn citation following the cts protocol for a database called ‘latty,’  `aemilianus01.` refers to the textgroup, `latty2570222.` refers to the work, and `latty-lat1:` refers to the edition.  

## Departure from CapiTainS
* We followed the CapiTainS guidelines up to the level of the edition: `urn:cts:latty:aemilianus01.latty2570222.latty-lat1:`
* CapiTainS requires each element under the text node to have an 'n' attribute.
* Our editions have this 'n' attribute, but the value differs from other implementations.
* As previously noted, we are working with non-canonical texts.  There is no established citation scheme, and many people are not familiar with these texts.
* Instead of just using numbers, we used both the names of existing elements and their sequence in the document: instead of something like `2.6.2.2.6` we have `text.body.div2.div6.div2.div2.l6`
* The latter urn fragment suggests something about the semantic relationships of the segments and can help a reader have a somewhat clearer understanding of this citation.

Next we used the xml:base attribute to create texgroup and work directories.  The textgroup is a directory that contains works which belong to a single author or set of authors.  We created a separate textgroup for each work by an anonymous author rather than put them all together in one textgroup.  Inside each texgroup directory there is a work directory for each text in the text group.  There were no works with multiple editions in this collection, but our citation scheme does allow for this.  Next we moved the files into their appropriate directories, we created cts xml files for each textgroup and each work.  The cts xml files contain metadata about the textgroup or work.

(Add description of validation here)
