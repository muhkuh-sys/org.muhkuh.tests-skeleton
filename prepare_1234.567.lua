local t = ...

-- Copy the tests.xml to the working folder.
t:copy{
  ['../../../tests_1234.567.xml'] = 'tests.xml'
}

-- Filter the testcase XML with the VCS ID.
t:filterVcsId('../../..', '../../../testcase_1234.567.xml', 'testcase.xml')

return true
