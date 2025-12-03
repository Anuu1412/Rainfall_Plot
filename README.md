# Rainfall Plot 
### This repository provides a complete guide to generating Rainfall Plots for visualizing genome-wide mutation distribution patterns using the maftools package in R.
## Overview
A Rainfall Plot is a genomic visualization method that shows how mutations are distributed across chromosomes.

It highlights the inter-mutation distance (how close or far mutations occur from each other), which helps identify hypermutated regions or kataegis.

In a rainfall plot:

Each dot represents a single nucleotide mutation (SNP).

The x-axis shows chromosomal position.

The y-axis shows log10(inter-event distance) — the distance between mutations.

Colors represent mutation types:

C>T, C>A, C>G, T>C, T>A, T>G

These plots are widely used in cancer genomics to study mutation clustering and mutational signatures across the whole genome.
## Dataset Requirements
This analysis uses a MAF (Mutation Annotation Format) file as input.

The workflow requires a MAF file downloaded from the TCGA (via the GDC Data Portal).

Input Source (TCGA – GDC Data Portal)

The mutation dataset used in this analysis was downloaded from the Genomic Data Commons (GDC) Portal.

To download the same type of file:
1. Go to the GDC Data Portal.
2. Click Explore More Tools.
3. Select Cohort Level MAF.
4. Choose a cancer cohort (e.g., BRCA, LUAD, GBM).
5. Open the file summary.
6. Download the .maf file to your system.

This file contains all somatic mutations detected in that TCGA cohort.

Your MAF file must include Required Columns:
- Chromosome – chromosome number
- Start_Position – genomic position of mutation
- Variant_Type – mutation type (SNP required for rainfall plot)
- Tumor_Sample_Barcode – sample ID
- Reference_Allele
- Tumor_Seq_Allele2

Rainfall plots specifically require SNPs, so mutations are filtered based on Variant_Type.
## Step-by-Step Tutorial
1. Install and Load Necessary Package

   Ensure that the maftools library is available in your environment.
   This package provides all functions required to read MAF data and create rainfall plots.

2. Import Your MAF File

   Load the downloaded TCGA MAF file into your analysis environment.
   After loading, convert it into a MAF object so that the dataset is properly structured for downstream plotting.

3. Check the Dataset Summary

   Verify that the MAF object contains valid mutation information, sample IDs, and SNP entries.
   This step confirms that data is suitable for generating a rainfall plot.

4. Generate the Rainfall Plot

   Create the rainfall plot by providing the MAF object.

   The plot will:
- Map mutations across all chromosomes
- Calculate distances between consecutive mutations
- Detect sudden changes in mutation density
- Represent mutation types with different colors

   You may also generate a plot for a specific sample by selecting a Tumor Sample Barcode.

5. Customize and Export
Customize visual features such as point size, font size, and layout as needed.
Export the final rainfall plot as an image file (PNG, JPEG, or PDF) for use in publications or presentations.

## Use Cases
1. Visualizing Mutation Clusters (Kataegis)

   Identify regions across chromosomes where mutations occur very close together.

   These clusters may reflect mutational processes such as APOBEC activity.
2. Comparing Mutation Types

   Colors distinguish mutation types (C>T, C>A, C>G, T>C, T>A, T>G), allowing interpretation of underlying mutational signatures.
3. Cancer Genomics Analysis

   Used widely in cancer studies to detect hotspots, mutation bursts, and genome-wide mutation distribution patterns.
4. Detecting Genomic Instability

   Sudden changes in inter-mutation distance can indicate genomic instability, exposure to carcinogens, or specific DNA repair defects.


