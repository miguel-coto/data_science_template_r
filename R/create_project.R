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
      			  '.RData',
			      '.Ruserdata',
			      '.Rproj.user/',
			      '.Renviron'
			 )

		  writeLines(paste(git_ignores, sep = '\n'), '.gitignore')
		}

	dir.create(file.path(path, "data"))
	dir.create(file.path(path, "data/raw"))
	dir.create(file.path(path, "data/interim"))
	dir.create(file.path(path, "data/processed"))
	dir.create(file.path(path, "data/external"))
	dir.create(file.path(path, "docs"))
	dir.create(file.path(path, "test"))
	dir.create(file.path(path, "reports"))

	# Check selected folder
	if(dots[["folder"]] == "Model"){
		#dir.create("production", recursive = TRUE, showWarnings = FALSE)
		 # Create directories
		dir.create(file.path(path, "models"))
		#dir.create(file.path(path, "graphs"))
		#dir.create(file.path(path, "utilities"))
		dir.create(file.path(path, "src"))
		dir.create(file.path(path, "src/utilities"))
		dir.create(file.path(path, "src/data"))
		dir.create(file.path(path, "src/features"))
		dir.create(file.path(path, "src/models"))
		dir.create(file.path(path, "src/visualization"))

	} else {
		#dir.create("development", recursive = TRUE, showWarnings = FALSE)
		dir.create(file.path(path, "graphs"))
		dir.create(file.path(path, "utilities"))
		dir.create(file.path(path, "src"))

	}

}
