## Engineering Notes

### 1. Why did you choose this framework structure?

I chose a layered BDD-based framework using Cucumber, Selenium, and the Page Object Model (POM) to ensure clear separation of concerns. 
- Feature files describe behavior in plain English
- Step definitions handle test flow
- Page classes encapsulate UI interactions
- Utilities manage cross-cutting concerns like driver management and waits  
This structure improves readability, maintainability, and collaboration between QA and non-technical stakeholders.

---

### 2. How does your wait strategy prevent flakiness?

I use explicit waits (`WebDriverWait` with `ExpectedConditions`) instead of implicit or hard waits.
Waits are applied only where needed, such as:
- Page transitions
- Element clickability
- URL changes  
This ensures synchronization with the application state, reducing timing-related failures and making tests stable across environments.

---

### 3. How does your locator strategy improve stability?

I primarily use:
- Stable IDs
- Meaningful attributes
- Context-aware locators  
Locators are centralized inside page classes, which avoids duplication and minimizes maintenance when UI changes occur.

---

### 4. How would you scale this to 50+ scenarios?

To scale:
- Reuse step definitions across features
- Keep page objects small and focused
- Use scenario outlines for data-driven testing
- Introduce tags for selective execution (`@smoke`, `@regression`)  
This allows efficient test management and faster execution as coverage grows.

---

### 5. How would you execute this in CI/CD?

I would integrate this framework into CI/CD using tools like Jenkins or GitHub Actions:
- Trigger tests on code push or pull request
- Use Maven for build and execution
- Generate reports after execution  
Tests can run headless for faster feedback in pipeline environments.

---

### 6. Two improvements you would make with more time

1. Add parallel execution support to reduce test runtime.
2. Integrate advanced reporting (Allure/Extent) with screenshots on failure for better debugging.

************************************************************************************************************************

## AI / Copilot Usage Disclosure

AI coding assistants were used during the development of this automation framework with full understanding of the implemented logic.

### AI Tools Used
- ChatGPT

### Areas Where AI Assistance Was Used
- Initial framework structure suggestions (Page Object Model + BDD)
- Sample Selenium + Cucumber code snippets
- Guidance on wait strategies and best practices
- README documentation wording

### What Was Modified and Why
- All generated code was reviewed, customized, and refactored to fit the project requirements
- Locators were manually verified and adjusted for stability
- Wait strategies were tuned based on actual application behavior
- Assertions and validations were added manually for correctness
- Code structure was adapted to support scalability and maintainability

The final implementation reflects my own understanding, decisions, and ability to modify or extend the framework.
