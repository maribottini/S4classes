# tests/testthat/test-AccessorFunctions.R

library(testthat)
library(S4classes)

context("Testing all the accessor functions")

test_that("GetSymbol returns the correct symbol", {
  gene <- new("ProteinCodingGene",
              name = "Breast Cancer Gene 1", ID = "BC12345", sym = "BRCA1",
              chr = "17", start = 43044295, end = 43125482,
              desc = "Gene involved in DNA repair",
              product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
  expect_equal(GetSymbol(gene), "BRCA1")
})

test_that("SetSymbol updates the gene symbol correctly", {
  gene <- new("ProteinCodingGene",
              name = "Breast Cancer Gene 1", ID = "BC12345", sym = "BRCA1",
              chr = "17", start = 43044295, end = 43125482,
              desc = "Gene involved in DNA repair",
              product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
  updated_gene <- SetSymbol(gene, "BRCA1_new")
  expect_equal(GetSymbol(updated_gene), "BRCA1_new")
})

test_that("getEnd returns the correct end sequence of the gene", {
  gene <- new("ProteinCodingGene",
              name = "Breast Cancer Gene 1", ID = "BC12345", sym = "BRCA1",
              chr = "17", start = 43044295, end = 43125482,
              desc = "Gene involved in DNA repair",
              product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
  expect_equal(getEnd(gene), 43125482)
})

test_that("getStart returns the correct start sequence of the gene", {
  gene <- new("ProteinCodingGene",
              name = "Breast Cancer Gene 1", ID = "BC12345", sym = "BRCA1",
              chr = "17", start = 43044295, end = 43125482,
              desc = "Gene involved in DNA repair",
              product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
  expect_equal(getStart(gene), 43044295)
})

test_that("setEnd updates the end sequence of the gene correctly", {
  gene <- new("ProteinCodingGene",
              name = "Breast Cancer Gene 1", ID = "BC12345", sym = "BRCA1",
              chr = "17", start = 43044295, end = 43125482,
              desc = "Gene involved in DNA repair",
              product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
  updated_gene <- setEnd(gene, 43130000)
  expect_equal(getEnd(updated_gene), 43130000)
})

test_that("setStart updates the start sequence of the gene correctly", {
  gene <- new("ProteinCodingGene",
              name = "Breast Cancer Gene 1", ID = "BC12345", sym = "BRCA1",
              chr = "17", start = 43044295, end = 43125482,
              desc = "Gene involved in DNA repair",
              product = list(proteinID = "P38398", proteinSeq = "MEEPQSDPSV..."))
  updated_gene <- setStart(gene, 43040000)
  expect_equal(getStart(updated_gene), 43040000)
})
