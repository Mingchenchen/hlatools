context("HLAAlleles")

doc <- read_hla_xml(remote = FALSE)
test_that("read_hla_xml returns correctly", {
  expect_is(doc, "xml_document")
})

dpa <- parse_hla_alleles(doc, "HLA-DPA1")
test_that("parse_hla_alleles returns correctly", {
  expect_is(dpa, "HLAAllele")
  expect_equal(locusname(dpa), "HLA-DPA1")
})

test_that("HLAAllele accessor methods work correctly", {
  ## Subsetting
  x <- dpa["01:03:01:01"]
  expect_equal(length(x), 1)
  expect_equal(allele_name(x), "HLA-DPA1*01:03:01:01")
  expect_equal(names(x), "HLA-DPA1*01:03:01:01")
  expect_equal(allele_id(x), "HLA00499")
  expect_equal(g_group(x), "DPA1*01:03:01G")
  expect_equal(p_group(x), "DPA1*01:03P")
  expect_equal(cwd_status(x), "Common")
  expect_equal(ethnicity(x), "Caucasoid:Oriental")
  expect_equal(sample_name(x), "BOLETH:JM15:LB:LG2:PRIESS:QBL:T5-1:TUBO:WJR076")
  expect_true(is_complete(x))
  expect_false(is_lsl(x))
  expect_is(as(x, "data.table"), "tbl_dt")
  ## Partial subsettig
  y <- dpa["01:03"]
  expect_equal(length(y), 15)
  ## Combine
  expect_equal(length(c(x, y)), 16)

})

test_that("HLAAllele features, sequences, and metadata", {
  x <- dpa["01:03:01:01"]
  ## Features
  f <- features(x)
  expect_is(f, "CompressedHLARangesList")
  expect_is(f[[1]], "HLARanges")
  expect_equal(length(f[[1]]), 9)
  ## Sequences
  s <- sequences(x)
  expect_is(s, "DNAStringSet")
  expect_equal(length(s), 1)
  expect_equal(names(s), "HLA-DPA1*01:03:01:01")
  expect_equal(width(s), 9775)
  ## Metadata
  m <- elementMetadata(x)
  expect_is(m, "DataFrame")
  expect_equal(length(m), 14)
})

test_that("HLAAllele exon, intron, and utr", {
  x <- dpa["01:03:01:01"]
  ##
  e1 <- exon(x, 1)
  expect_is(e1, "DNAStringSet")
  expect_equal(width(e1), 100)
  expect_equal(Biostrings::toString(Biostrings::subseq(e1, 1, 10)), "ATGCGCCCTG")
  ##
  e2 <- exon(x, 2)
  expect_equal(Biostrings::toString(Biostrings::subseq(e2, 1, 10)), "CGGACCATGT")
  ##
  i12 <- intron(x, 1:2)
  expect_is(i12, "DNAStringSet")
  ##
  u <- utr(x, 2)
  expect_equal(Biostrings::toString(Biostrings::subseq(u, 1, 10)), "AATACTGTAA")
  expect_error(utr(x, 3))
})

