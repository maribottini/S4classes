#tests/testthat/test-Classes.R

library(testthat)
library(S4classes)

context("Testing Gene Classes")

test_that("ProteinCodingGene class includes protein-specific slots", {
  pc_gene <- new("ProteinCodingGene",
                 name = "Protein Coding Gene",
                 ID = "ENSG000002",
                 sym = "PCGENE",
                 chr = "X",
                 start = 200,
                 end = 6000,
                 desc = "A protein coding gene",
                 product = list(proteinID = "P12345", proteinSeq = "MEEPQSDPSV"))

  expect_equal(pc_gene@product$proteinID, "P12345")
  expect_equal(pc_gene@product$proteinSeq, "MEEPQSDPSV")
})

test_that("LncRNAGene class correctly handles RNA sequences", {
  lnc_gene <- new("lncRNAGene",
                  name = "LncRNA Gene",
                  ID = "ENSG000003",
                  sym = "LNC1",
                  chr = "11",
                  start = 300,
                  end = 7000,
                  desc = "A long non-coding RNA gene",
                  product = list(lncRNAID = "LNC001", RNASeq = "UUGUUCGACUGA"))

  expect_equal(lnc_gene@product$lncRNAID, "LNC001")
  expect_equal(lnc_gene@product$RNASeq, "UUGUUCGACUGA")
})

test_that("microRNAGene class handles microRNA-specific slots", {
  mR_gene <- new("microRNAGene",
                 name = "MicroRNA Gene",
                 ID = "ENSG000004",
                 sym = "MIR1",
                 chr = "21",
                 start = 400,
                 end = 8000,
                 desc = "A microRNA gene",
                 product = list(microRNAID = "MIR001", microRNASeq = "ACGUACGUGA"))

  expect_equal(mR_gene@product$microRNAID, "MIR001")
  expect_equal(mR_gene@product$microRNASeq, "ACGUACGUGA")
})
