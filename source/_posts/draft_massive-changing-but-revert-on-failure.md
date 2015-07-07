---
published: false
categories:
  - sample
  - tip
  - git
  - bash
  - regex
---

I was changing a massive amount of files (>1000) for a repeated code. The search and replace query was not too exact and it broke many tests in the system. For that, I reverted all test-breaking changes in the system.

Copy all the failing tests to a text editor:

Input:

```
testSearchXMLDocument(io.company.controller.dms.DocumentControllerTest)
testCreateXMLDocument(io.company.controller.dms.DocumentControllerTest)
testUpdateXFPageMetadata(io.company.controller.dms.DocumentControllerTest)
testCreateDocumentCrop(io.company.controller.dms.DocumentControllerTest)
testUpdateCropMetadata(io.company.controller.dms.DocumentControllerTest)
testDeleteDocument(io.company.controller.dms.DocumentControllerTest)
testUpdateXmlDocumentMetadata(io.company.controller.dms.DocumentControllerTest)
testUpdateXML(io.company.controller.dms.DocumentControllerTest)
testSearchXFPage(io.company.controller.dms.DocumentControllerTest)
testCreateXFPage(io.company.controller.dms.DocumentControllerTest)
testUpdatePage(io.company.controller.dms.DocumentControllerTest)
testSearchCrop(io.company.controller.dms.DocumentControllerTest)
testUpdateCrop(io.company.controller.dms.DocumentControllerTest)
testMoveDocument(io.company.controller.dms.DocumentControllerTest)
testGetDocument(io.company.controller.dms.DocumentControllerTest)
```

regex:

(tested in Sublime 3, build 3083, Windows 64)

find what: ``^[^(]+\([a-Z.]*\.(.*)\)``

replace with: ``$1``

Regex explanation for ``^[^(]+\([a-Z.]*\.(.*)\)``: 

  * ``^``: beginning of line
  * ``[^(]+``: every character except parenthesis, one or more times
  * ``\([a-Z.]*``: start with one parenthesis, any number of a-z, a-Z
  * `\.``: a dot, as I'm using regex replacement
  * ``(.*)``: any character, zero or more times, captured in group ``$1``
  * ``\)``: closing parenthesis




Output:

```
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
DocumentControllerTest
```

copy that to file ``a.txt``

Revert all the changes in these files:

```bash
for i in $(cat a.txt | uniq); do
  git checkout -- *$i*
done
```

