# ArchitectedCompressionDesign
Code for "Architected Materials for Mechanical Compression: Design via Simulation, Deep Learning, and Experimentation"

Reference: A. Lew, K. Jin, M.J. Buehler, Architected Materials for Mechanical Compression: Design via Simulation, Deep Learning, and Experimentation, npj Computational Materials, 2023 

1.) Setup environment with: conda env create -f environment.yml

2.)	Generate initial dataset of architected honeycomb structures with 'ArchitectedCompression_StructureGeneration.ipynb'. Sample structures are provided in the folder 'ArchitectedCompression_MDScripts'.

3.)	In the folder 'ArchitectedCompression_MDScripts', setup MD simulations by running 'setup.sh', then submit MD simulation jobs to a cluster equipped with LAMMPS by running 'submit.sh'.

4.)	After simulations are complete, train ML model with the compression results by running the MLTraining part of ArchitectedCompression_MLTraining+GA.ipynb. A sample pretrained model is provided by Model.h5.

5.)	Select and obtain genetic algorithm targets by running the GA part of ArchitectedCompression_MLTraining+GA.ipynb.

6.)	Convert obtained target structures from .png to .stl files for 3D printing by running the last section in ArchitectedCompression_StructureGeneration.ipynb. Sample files for 3D printing are provided in the folder ArchitectedCompression_3DPrinting.

7.) 3D printed structures can be subsequently subjected to experimental compression testing.
