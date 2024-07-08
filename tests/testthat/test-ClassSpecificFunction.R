#tests/testthat/test-ClassSpecificFunction.R

library(testthat)
library(S4classes)

context("Testing gene product length calculations")

test_that("lengthProduct for ProteinCodingGene returns correct length", {
  pc_gene <- new("ProteinCodingGene",
                 name = "Protein Coding Gene",
                 ID = "gene2", sym = "GEN2",
                 chr = "X",
                 start = 200, end = 6000,
                 desc = "Some protein coding gene",
                 product = list(proteinID = "P002", proteinSeq = "MEEPQSDPSV"))
  expect_equal(lengthProduct(pc_gene), nchar("MEEPQSDPSV"))
})

test_that("lengthProduct for LncRNAGene returns correct length", {
  lnc_gene <- new("lncRNAGene",
                  name = "LncRNA Gene",
                  ID = "gene3", sym = "LNC1",
                  chr = "11",
                  start = 300, end = 7000,
                  desc = "A long non-coding RNA gene",
                  product = list(lncRNAID = "LNC001", RNASeq = "UUGUUCGACUGA"))
  expect_equal(lengthProduct(lnc_gene), nchar("UUGUUCGACUGA"))
})

test_that("lengthProduct for microRNAGene returns correct length", {
  mR_gene <- new("microRNAGene",
                 name = "MicroRNA Gene",
                 ID = "gene4", sym = "MIR1",
                 chr = "21",
                 start = 400, end = 8000,
                 desc = "A microRNA gene",
                 product = list(microRNAID = "MIR001", microRNASeq = "ACGUACGUGA"))
  expect_equal(lengthProduct(mR_gene), nchar("ACGUACGUGA"))
})
