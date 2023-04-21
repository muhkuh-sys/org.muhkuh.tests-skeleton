# Production test for 1234.567 "demo board"

This is a skeleton production test. Follow the steps in the chapter "ToDo" to adapt it to your needs.

# ToDo

- [ ] Replace the first chapter in this document with the article number and name of your device and a short description.

- [ ] Open the file ```build_artifact.py``` and replace "1234.567R8" in line 24 with the article number of your device.  
```Python
astrTestVariants = [
    '1234.567R8'
]
```

- [ ] Open the file ```prepare_1234.567R8.lua``` and replace "1234.567R8" in lines 5 and 9 with the article number of your device.  
```lua
-- Copy the tests.xml to the working folder.
t:copy{
  ['../../../tests_1234.567R8.xml'] = 'tests.xml'
}
```  
and  
```lua
-- Filter the testcase XML with the VCS ID.
t:filterVcsId('../../..', '../../../testcase_1234.567R8.xml', 'testcase.xml')
```

- [ ] Open the file ```testcase_1234.567R8.xml``` and change the following lines:  
  * line 7: ```artifact="1234.567R8_demo_board"```  
  Replace "1234.567R8" with the article number of your device
  * line 12: ```<author name="Change me" url="https://www.hilscher.com/" />```  
  Replace "Change me" with a group or name, e.g. "HWR department" or "John Doe".
  * line 14: ```A board test for the demo board.```  
  Replace "demo board" with the name of the board to test.
  * line 22: ```<action name="finalizer" file="${prj_root}/finalizer_1234.567R8.lua"/>```  
  Replace "1234.567R8" with the article number of your device

- [ ] Open the file ```tests_1234.567R8.xml``` and change the following lines:  
  * line 2: ```<MuhkuhTest title="1234.567R8" subtitle="demo board" pre="lua/board_prepare.lua" post="lua/board_finalize.lua">```  
  Replace the title and subtitle with the article number and name of your device.
  * line 6: ```<Parameter name="LabelValidationData">12345678</Parameter>```  
  This is the list of valid RevArticle numbers for the test. Each entry of the list a a number with 8 digits. The first 7 digits is the article number without a dot, the 8th number is the hardware revision. List entries are separated with comma.  
  Example:  
  The new test is valid for the RevArticles 7654.321R1 and 7654.321R2.  
  Replace line 6 with ```<Parameter name="LabelValidationData">76543211,76543212</Parameter>```.

- [ ] Rename the following files. Replace "1234.567R8" in the filename with the article number of your device.  
  * ```finalizer_1234.567R8.lua```
  * ```prepare_1234.567R8.lua```
  * ```testcase_1234.567R8.xml```
  * ```tests_1234.567R8.xml```

