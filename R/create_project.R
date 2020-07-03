#' This package will create a function called create_project()
#'
#' It's callback is at: inst/rstudio/templates/project/create_project.dcf
#'
#' @export

create_project <-
  function(path, ...) {

    # Create the project path given the name chosen by the user:
    dir.create(path, recursive = TRUE, showWarnings = FALSE)

    # Change the working directory to the recently created folder:
    setwd(file.path(getwd(), path))

    # Collect the list of inputs in a list to be called later:
    dots <- list(...)

    # In the project template we've added 2 choices for the user:
	# * One allows them to select if the project will have a .gitignore file
	# * The other will create a folder, given a select input from the user

	# Check .gitignore argument
	if(dots[["createGitignore"]]) {
		  git_ignores <-
    			c(
			      '.Rhistory',
			      '.Rapp.history',
      			  '*.RData',
			      '.Ruserdata',
			      '.Rproj.user/',
			      '.Renviron',
				  '*.csv',
				  '*.xlsx',
				  '*.xls',
				  '*.sas7bdat',
				  '*.RDs'
			 )

		  writeLines(paste(git_ignores, sep = '\n'), '.gitignore')
		}

	if(dots[["renv"]]) {
		require('renv')
		renv::init()
	}


	writeLines('', 'requirements.txt')

	dir.create("data")
	dir.create("data/raw")
	dir.create("data/interim")
	dir.create("data/processed")
	dir.create("data/external")
	dir.create("docs")
	dir.create("test")
	dir.create("reports")
	dir.create("references")
	dir.create("notebooks")

	# Check selected folder
	if(dots[["folder"]] == "Model"){
		#dir.create("production", recursive = TRUE, showWarnings = FALSE)
		 # Create directories
		dir.create("models")
		#dir.create("graphs")
		#dir.create("utilities")
		dir.create("src")
		dir.create("src/utilities")
		dir.create("src/data")
		dir.create("src/features")
		dir.create("src/models")
		dir.create("src/visualization")
		textRD <- "

# The directory structure of your new project looks like this.
________________________________________________________________________________________

- README.md: The top-level README for analysts using this project.
- data
   - external : Data from third party sources.
   - interim  : Intermediate data that has been transformed.
   - processed: The final, canonical data sets for modeling.
   - raw      : The original, immutable data dump.

- docs: Internal documentation in formats: HTML, LaTeX (for printable PDF versions), ePub,
        Texinfo, manual pages, plain text

- models: Trained and serialized models, model predictions, or model summaries

- notebooks: R-markdowns or Jupyter notebooks. Naming convention is a number (for ordering),
             the creator's initials, and a short `-` delimited description, e.g.
             `1.0-mcg-initial-data-exploration`.

- references: Data dictionaries, manuals, and all other explanatory materials.

- reports: Generated analysis as HTML, PDF, LaTeX, etc.

- requirements.txt: The requirements file for reproducing the analysis environment.

- src: Source code for use in this project.

  - data: Scripts to download or generate data
      + make_dataset.R

  - features: Scripts to turn raw data into features for modeling
      + build_features.R

  - models: Scripts to train models and then use trained models to make predictions
      + predict_model.R
      + train_model.R

  - visualization: Scripts to create exploratory and results oriented visualizations
      + visualize.R

  - utilities: Common functions and code that can be utilized for the rest of the sripts/notebooks.

- test: Scripts to generate the tests for the rest of the code.
		"


	} else {
		#dir.create("development", recursive = TRUE, showWarnings = FALSE)
		dir.create("graphs")
		dir.create("utilities")
		dir.create("src")

		textRD <- "

# The directory structure of your new project looks like this.
__________________________________________________________________________________________________

- README.md: The top-level README for analysts using this project.
- data
    - external : Data from third party sources.
    - interim  : Intermediate data that has been transformed.
    - processed: The final, canonical data sets for modeling.
    - raw      : The original, immutable data dump.

- docs: nternal documentation in formats: HTML, LaTeX (for printable PDF versions), ePub, Texinfo,
        manual pages, plain text

- notebooks: R-markdowns or Jupyter notebooks. Naming convention is a number (for ordering),
             the creator's initials, and a short `-` delimited description, e.g.
             `1.0-mcg-initial-data-exploration`.

- references: Data dictionaries, manuals, and all other explanatory materials.

- reports: Generated analysis as HTML, PDF, LaTeX, etc.

- requirements.txt: The requirements file for reproducing the analysis environment.

- src: Source code for use in this project.

- test: Scripts to generate the tests for the rest of the code.

- graphs: Generated graphics and figures to be used in reporting

- utilities: Common functions and code that can be utilized for the rest of the sripts/notebooks.

		"

	}

  # Create README
  file.create("README.md")
  fileConn <- file('README.md')
  writeLines(textRD, fileConn)
  close(fileConn)


}
