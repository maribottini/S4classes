#tests/testthat/test-ClassSpecificFunction.R

library(testthat)
library(S4classes)

context("Testing gene product length calculations")

test_that("lengthProduct for ProteinCodingGene returns correct length", {
  pc_gene <- new("ProteinCodingGene",
                 id = "gene2", symbol = "GEN2", name = "Protein Coding Gene",
                 description = "Some protein coding gene", chromosome = "X",
                 start = 200, end = 6000,
                 product = list(proteinID = "P002", proteinSeq = "MEEPQSDPSV"))
  expect_equal(lengthProduct(pc_gene), nchar("MEEPQSDPSV"))
})

test_that("lengthProduct for LncRNAGene returns correct length", {
  lnc_gene <- new("lncRNAGene",
                  id = "gene3", symbol = "LNC1", name = "LncRNA Gene",
                  description = "A long non-coding RNA gene", chromosome = "11",
                  start = 300, end = 7000,
                  product = list(lncRNAID = "LNC001", RNASeq = "UUGUUCGACUGA"))
  expect_equal(lengthProduct(lnc_gene), nchar("UUGUUCGACUGA"))
})

test_that("lengthProduct for microRNAGene returns correct length", {
  mir_gene <- new("microRNAGene",
                  id = "gene4", symbol = "MIR1", name = "MicroRNA Gene",
                  description = "A microRNA gene", chromosome = "21",
                  start = 400, end = 8000,
                  product = list(microRNAID = "MIR001", seedSeq = "ACGUACGUGA"))
  expect_equal(lengthProduct(mir_gene), nchar("ACGUACGUGA"))
})
