# RobotFramework-Automation

This is a simple example for Automation using Robot Framework.

## Installation Guide 

### Install Python and Pip 

- Install Python latest version/ Upgrade 
- Install pip (Python package manager to install packages) 
- Restart the kernal 
- Use the package manager [pip](https://pip.pypa.io/en/stable/) to install the necessary libraries.

### Install Python Libraries.  

```bash
pip install -r requirements.txt
```
This will install all the libraries and respective supported versions for this project.

### Robotframework Browser Configurations
- Only supports for Python 3.8 or newer.
- Install node.js from https://nodejs.org/en/download/
- Install the node dependencies: run `rfbrowser init` in your terminal
- if rfbrowser is not found, try `python -m Browser.entry init`

## Execution
Execute tests using the below commands
```bash
robot Tests/TestCases/TestCase1.robot
```

```
python -m robot Tests/TestCases/TestCase1.robot
```
Execute all the files using *
```bash
robot Tests/TestCases/TestCase*.robot
```
```
python -m robot Tests/TestCases/TestCase*.robot
```

## Folder Structure
```bash
--Resources/
    --Data/
        Credentials.robot
        Selectors.robot
        Variables.robot
    --Keywords/
--Tests/
    --TestCases/
        TestCase1.robot
        TestCase2.robot
    TestSuite.robot
--README.md
--report.html
--requirements.txt
```

## Contributing
Created and managed by Shanka Koththagoda 

## License
MIT License
