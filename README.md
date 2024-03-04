# foph_spacetime_inla

Material for a workshop on space-time models in INLA

# Setup instructions

There are two ways to run the code in this repo:

- In a normal RStudio installation
- In a dockerized version of RStudio

The first approach should be the easiest as long as there is no problem
during installation. However, it is not unlikely that installing INLA
will require some extra obscure steps (eg. install stuff like gdal). Since
this may not work smoothly, the Docker approach can be a useful fallback
if you end up spending more than one hour on the basic setup

## Native RStudio installation

The steps are quite straight forward:

- Install R and RStudio from Posit's website: <https://posit.co/download/rstudio-desktop/>
- Ensure you have git installed. On MacOS, you can get if from here:
  <https://git-scm.com/downloads>. On Windows, go here: <https://gitforwindows.org/>
  (keep the default option at installation).
  If you don't manage to do so, you can also download the code by clicking on the
  green "Code" button and then "Download ZIP". Then, unzip the file
- Open a terminal (macOS) or "git for windows terminal" (Windows).
- Clone this repo with git somewhere on your computer by running
  `git clone https://github.com/jriou/2024_foph_spacetime_inla.git`
- Go inside the `2024_foph_spacetime_inla` folder and double click on the
  `.Rproj` file. This will open the project in RStudio
- In the console, run `renv::restore()` to install all required dependencies.
  This will take some time.
- To test if everything works, run `1_setup.Rmd`. If everything works, you
 are good to go. Otherwise, ask for help.

## Docker

This requires a bit more work:

- Install Docker Desktop: <https://www.docker.com/products/docker-desktop/>
  (if asked, use WSL instead of Hyper-V)
- Start Docker Desktop. Use recommended options. Continue without sign in.
  Answer whatever you want on the questionnaire.
- Install git as indicated above
- Clone the repo as indicated above
- Using the same terminal as above, go to the folder you just cloned
  with `cd 2024_foph_spacetime_inla` and run `docker compose up`.
- If you get a network request, accept
- Go to `http://localhost:8787` in a web browser and log-in with `rstudio`
  and `helloworld` as credential
- Open the project by going to "Documents" from RStudio in the web browser
  and click on the "2024_foph_spacetime_inla.Proj` file
- Run `renv::restore()` as described above
- Test everything by running the script

