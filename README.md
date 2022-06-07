# TestT3FFExplicit.jl

Illustration of the T3FF general flat-facet shell finite element capabilities in
explicit integration of wave propagation problems. The paper describing this
element has been submitted 02/2022, and appeared 06/07/2022 (http://doi.org/10.1002/nme.7045).

## Instructions for those new to Julia

We are assuming that your computing platform is Windows. The naming of the
folders and a few other details are different on Linux or the Mac. 

1. Click on the latest release. Download as .zip file. Unzip the folder
    somewhere. Let us say it is in the `Downloads` folder:
    `C:\Users\YourUserName\Downloads\TestT3FFExplicit.jl-0.3.0`. 
2. Download `Julia`. Go to [`https://julialang.org/downloads/`](https://julialang.org/downloads/), and choose the portable current stable release. Download to the same folder (`Downloads`).  Extract the zip file (for instance with `7-zip` choose "Extract here"). This will yield `C:\Users\YourUserName\Downloads\julia-1.7.1` (for instance).
2. Change your working folder to the `C:\Users\YourUserName\Downloads\TestT3FFExplicit.jl-0.3.0` folder. 
3. Start a `cmd` window. Make sure that the folder displayed in the command window is  `C:\Users\YourUserName\Downloads\TestT3FFExplicit.jl-0.3.0`.
4. Start `julia` in a `cmd` window by running the command `..\julia-1.7.1\bin\julia.exe`. 
5. When you get the Julia prompt, `julia>`, run the following commands (copy and paste into the command window)
```
include("top.jl")
using Pkg; Pkg.test(); 
```
First, the environment is set up, and then the second line executes the tests of the shell formulation.

Have a look at the Results section below.

## Quick instructions for Julia users

Assuming the `TestT3FFExplicit.jl` package was cloned from Github, change your working directory
into the `TestT3FFExplicit.jl` folder, start `julia`, and then run
```
include("top.jl")
```
To produce the results presented in the paper, execute
```
using Pkg; Pkg.test(); 
```
Have a look at the Results section below.

## Results

The `test` directory will hold the generated files, `.vtu` files for 
visualization with Paraview, and `.pdf` files for the generated graphs.
Beware: running the above will first clean all the output files from the previous run.

## Details

The `runtests.jl` script in the `test` folder shows which examples are executed in the tests.
These are all files ending in `_examples.jl`. Feel free to browse the source code in these files.

The functionality of the shell finite element is provided by the package
[`FinEtoolsFlexStructures`](https://github.com/PetrKryslUCSD/FinEtoolsFlexStructures.jl). The implementation may be inspected there.
