# PDH Data projects template

_A logical, reasonably standardized, but flexible project structure for doing and sharing data science work (PDH version)._


#### [Project homepage](https://miguelcotogarcia@dev.azure.com/miguelcotogarcia/PDH/_git/PDH/)


### Requirements to use this template:
-----------
 - R
 - [remotes R package](https://cran.r-project.org/web/packages/remotes/remotes.pdf) : This can be installed with the install.package R function:

``` R console
> install.packages("remotes")
```

### To start a new project, run:
------------

remotes::install_git(url = "https://miguelcotogarcia@dev.azure.com/miguelcotogarcia/PDH/_git/PDH", git = "external")
 
or you can download the package and install it locally:

remotes::install_local("<<path where you unzipped the package>>\\PDH\\rproject_template\\PDH", force = T)

In Rstudio go to File, New Project, New Directory and look for the template *PDH Project Template*


### The resulting directory structure
------------

The directory structure of your new project looks like this.

- In the case you selected a Model project:

```
├── README.md          <- The top-level README for analysts using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <-  Internal documentation in formats: HTML, LaTeX (for printable PDF versions), ePub, Texinfo, manual pages, plain text
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- R-markdowns or Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-mcg-initial-data-exploration`.
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│
├── requirements.txt   <- The requirements file for reproducing the analysis environment.
│
├── src                <- Source code for use in this project.
│   │
│   ├── data           <- Scripts to download or generate data
│   │   └── make_dataset.R
│   │
│   ├── features       <- Scripts to turn raw data into features for modeling
│   │   └── build_features.R
│   │
│   ├── models         <- Scripts to train models and then use trained models to make
│   │   │                 predictions
│   │   ├── predict_model.R
│   │   └── train_model.R
│   │
│   ├── visualization  <- Scripts to create exploratory and results oriented visualizations
│   |    └── visualize.R
│   |
│   └── utilities      <- Common functions and code that can be utilized for the rest of the sripts/notebooks. 
|
└── test               <- Scripts to generate the tests for the rest of the code.
```

- In the case you selected Other project:

```
├── README.md          <- The top-level README for analysts using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <-  Internal documentation in formats: HTML, LaTeX (for printable PDF versions), ePub, Texinfo, manual pages, plain text
│
├── notebooks          <- R-markdowns or Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-mcg-initial-data-exploration`.
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│
├── requirements.txt   <- The requirements file for reproducing the analysis environment.
│
├── src                <- Source code for use in this project.
|
├── test               <- Scripts to generate the tests for the rest of the code.
|
├── graphs             <- Generated graphics and figures to be used in reporting
|
└── utilities          <- Common functions and code that can be utilized for the rest of the sripts/notebooks. 

```

