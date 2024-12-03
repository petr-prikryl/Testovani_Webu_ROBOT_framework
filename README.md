  Robot Framework Test Suite body { font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; } h1, h2, h3 { color: #333; } pre { background-color: #f4f4f4; padding: 10px; border: 1px solid #ddd; border-radius: 5px; } ul { margin-left: 20px; } code { background-color: #eee; padding: 2px 4px; border-radius: 4px; }

Robot Framework Test Suite
==========================

This project contains automated test cases organized into test suites for validating various functionalities of a website.

Project Structure
-----------------

    C:.
    │   chromedriver.exe
    │
    ├───TS001 - Hlavni stranka
    │   ├───TS001-001 Top menu
    │   ├───TS001-002 Hledani
    │   ├───TS001-003 Body
    │   ├───TS001-004 Kalendar
    │   └───TS001-005 Patička
    │
    ├───TS002 -  Uredni deska
    ├───TS003 - Fotogalerie
    ├───TS004 - Infokanal
    └───TS005 - Přihlášení
    

How to Run Tests
----------------

Follow these steps to execute the test cases:

1.  Ensure `chromedriver.exe` is in the project directory and is compatible with your browser version.
2.  Open a terminal or command prompt.
3.  Navigate to the project directory.
4.  Run the batch file using the following command:

        run\_tests.bat
        

Batch File Description
----------------------

The `run_tests.bat` file automates the execution of all test cases in the project. It organizes outputs, reports, and logs into appropriate directories.

### Sample Batch File

    @echo off
    setlocal
    set "PATH=%PATH%;C:\\path\\to\\chromedriver.exe"

    robot -o "TS001 - Hlavni stranka\\TS001-001 - Output" -r "TS001 - Hlavni stranka\\TS001-001 - Report" -l "TS001 - Hlavni stranka\\TS001-001 - Log" "C:\\path\\to\\TS001 - Hlavni stranka\\TS001-001 Top menu"
    robot -o "TS001 - Hlavni stranka\\TS001-002 - Output" -r "TS001 - Hlavni stranka\\TS001-002 - Report" -l "TS001 - Hlavni stranka\\TS001-002 - Log" "C:\\path\\to\\TS001 - Hlavni stranka\\TS001-002 Hledani"
    ...
    endlocal
    

Test Suites and Cases
---------------------

*   **TS001 - Hlavní stránka:** Tests for top menu, search functionality, calendar, footer, and main links.
*   **TS002 - Úřední deska:** Validation of official board data.
*   **TS003 - Fotogalerie:** Navigation and sharing of photo gallery.
*   **TS004 - Infokanál:** Redirection verification to the info channel.
*   **TS005 - Přihlášení:** Login scenarios and user interactions.

Generated Files
---------------

*   `Output.xml`: Contains the results of the executed tests.
*   `Report.html`: Provides a summarized report of the test execution.
*   `Log.html`: Detailed logs of the test execution process.

Dependencies
------------

*   Robot Framework
*   Browser library for Robot Framework
*   ChromeDriver

Notes
-----

Ensure the Robot Framework and ChromeDriver are installed and correctly configured in your environment.

For further assistance, contact [petr@prikryl.cc](mailto:petr@prikryl.cc).
