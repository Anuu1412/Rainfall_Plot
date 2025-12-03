# Install maftools if not installed
install.packages("BiocManager")
BiocManager::install("maftools")

# Load library
library(maftools)

# Step 1: Load your TCGA MAF file  
# (Select the .maf file downloaded from GDC → Cohort Level MAF)
maf_file <- file.choose()

# Step 2: Read MAF
tcga_maf <- read.maf(maf = maf_file)

# Step 3: Generate rainfall plot
rainfallPlot(
  maf = tcga_maf,
  detectChangePoints = TRUE,
  pointSize = 0.6,
  fontSize = 1.2
)
