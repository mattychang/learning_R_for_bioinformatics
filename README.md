# learning_R

Tutorial to learn R and navigate RStudio

### 1. Download and Install **R**

R is the programming language you’ll use.

- Visit the official R website: [https://cran.r-project.org](https://cran.r-project.org)
- Choose your operating system (Windows, macOS, or Linux)
- Download and run the installer
- Follow the default setup instructions

### 2. Download and Install **RStudio**

RStudio is the IDE for writing and running R code.

- Go to: [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/)
- Click **Download RStudio Desktop** (free version)
- Choose the installer for your operating system
- Install and launch RStudio

### 3. Navigating **RStudio**

When you open RStudio, you'll see **four main panes**:

#### 1. Script Editor (Top Left)
This is where you write your code and save it in `.R` script files.
- Use this to draft and edit files like `01_basic_syntax.R`
- Run a line: place your cursor on a line and press:
  - `Ctrl + Enter` (Windows/Linux)
  - `Cmd + Enter` (Mac)
- Save your script: `Ctrl + S` or `Cmd + S`

#### 2. Console (Bottom Left)
This is where code runs.
- Type commands directly here if you don’t want to save them
- Outputs and error messages will appear here

#### 3. Environment / History (Top Right)
- **Environment** shows all your variables (e.g., `x <- 5`)
- **History** shows previously run commands

#### 4. Files / Plots / Packages / Help / Viewer (Bottom Right)
- **Files**: See files in your working directory
- **Plots**: Displays visualizations
- **Packages**: Manage installed packages
- **Help**: Search for function documentation (e.g., `?mean`)
- **Viewer**: Displays web content or R Markdown output

### 4. How to Run Code

- Press 'Ctrl/Cmd + Enter' to run each line in the Script Editor
- Watch the results in the Console
- Check created variables in the Environment tab

### 5. Installing and Loading Packages

R has thousands of add-on packages that extend its capabilities. To use a package, you must install it once and then load it every time you start a new session.

<pre><code class="language-r">
  install.packages("ggplot2") 
  library(ggplot2) 
</code></pre>
