# RobotFramework-Automation

This is a simple example for Automation using Robot Framework.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install Robotframework.

```bash
pip install robotframework
pip install robotframework-faker
pip install robotframework-browser
```

## Execution
```bash
robot Tests/TestCases/TestCase2.robot
```
or
```bash
python -m robot Tests/TestCases/TestCase2.robot
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
```

## Contributing

Pull requests are not welcome.
Created by Shanka Koththagoda 

## License
free