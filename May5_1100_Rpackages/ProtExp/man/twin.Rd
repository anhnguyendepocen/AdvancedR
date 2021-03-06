% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ProtExp.R
\name{twin}
\alias{twin}
\title{Twin DIA and SRM experiments}
\format{Two data frames with 103936 rows and 9 variables for
			\code{twin_dia} and 63104 rows and 9 variables for
		\code{twin_srm}.}
\description{
DIA and SRM datasets from the same experiment. These datasets
are subsets of the original datasets and have 33 proteins by DIA,
and 39 proteins by SRM. The dataset includes 58 pairs of monozygotic (MZ)
and dizygotic (DZ) twins, each measured at 2 time points, yielding
58 x 2 x 2 = 232 MS runs. The variables are as follows:
}
\details{
\itemize{
  \item protein. (chr) protein name.
  \item feature. (chr) combination of peptide, precursor charge state,
		fragment ion, and product charge state, separated by _.
  \item run.  (chr) MS run identifier (R001-R232).
  \item pair. (int) pair identifier number (1-58).
  \item zygosity. (factor) zygosity (MZ, DZ).
  \item subject. (int) subject identifier number (1-116).
  \item visit. (int) time of visit (1, 2).
  \item intensity_h. (num) integrated feature intensity
					from light (L) channel.
  \item intensity_l. (num) integrated feature intensity
					from heavy (H, aka reference) channel.
}
}
\examples{
data(twin)
head(twin_dia)
head(twin_srm)
}
