#tests/testthat/test-classes.R
library(testthat)
library(S4classes)

context("Testing Gene Classes")

test_that("ProteinCodingGene class includes protein-specific slots", {
  pc_gene <- new("ProteinCodingGene",
                 id = "ENSG000002",
                 symbol = "PCGENE",
                 name = "Protein Coding Gene",
                 description = "A protein coding gene",
                 chromosome = "X",
                 start = 200,
                 end = 6000,
                 product = list(proteinID = "P12345", proteinSeq = "MEEPQSDPSV"),
                 proteinID = "P12345",
                 proteinSeq = "MEEPQSDPSV")

  expect_equal(pc_gene@proteinID, "P12345")
  expect_equal(pc_gene@proteinSeq, "MEEPQSDPSV")
})

test_that("LncRNAGene class correctly handles RNA sequences", {
  lnc_gene <- new("lncRNAGene",
                  id = "ENSG000003",
                  symbol = "LNC1",
                  name = "LncRNA Gene",
                  description = "A long non-coding RNA gene",
                  chromosome = "11",
                  start = 300,
                  end = 7000,
                  product = list(),
                  lncRNAID = "LNC001",
                  RNASeq = "UUGUUCGACUGA")

  expect_equal(lnc_gene@lncRNAID, "LNC001")
  expect_equal(lnc_gene@RNASeq, "UUGUUCGACUGA")
})

test_that("microRNAGene class handles microRNA-specific slots", {
  mir_gene <- new("microRNAGene",
                  id = "ENSG000004",
                  symbol = "MIR1",
                  name = "MicroRNA Gene",
                  description = "A microRNA gene",
                  chromosome = "21",
                  start = 400,
                  end = 8000,
                  product = list(),
                  microRNAID = "MIR001",
                  seedSeq = "ACGUACGUGA")

  expect_equal(mir_gene@microRNAID, "MIR001")
  expect_equal(mir_gene@seedSeq, "ACGUACGUGA")
})
