## Description
This project is a web automation testing suite using Ruby, Capybara, SitePrism, and Cucumber. It's designed to perform behavior-driven development (BDD) tests on web applications.

## Getting Started
### Dependencies
- Ruby
- Capybara
- SitePrism
- Cucumber
- Selenium WebDriver (for Capybara)
- A web browser driver (e.g., ChromeDriver for Google Chrome)
### Installing
Clone the repository and install the required gems:

```bash
git clone https://github.com/yourusername/yourprojectname.git
cd yourprojectname
bundle install
```
## Configuration
Ensure you have the web browser driver (like ChromeDriver) installed and correctly set up in your PATH.

## Running the Tests
Run the Cucumber tests using the following command:

### To run all Cucumber features
```bash
cucumber
```
### To run a specific feature file
```bash
cucumber features/your_feature_file.feature
```

## Test Organization
- features/ - Contains Cucumber feature files written in Gherkin syntax.
- features/step_definitions/ - Contains Ruby step definition files.
- features/support/ - Includes support files like env.rb.

## Writing Tests
- Write Cucumber feature files in features/ directory.
- Define step definitions in features/step_definitions/.
- Use Page Object Model by defining page objects in features/page_objects.
