% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkg.R
\name{ga_collect_pageview}
\alias{ga_collect_pageview}
\title{Send pageviews to Google Analytics}
\usage{
ga_collect_pageview(page = "/home", title = page,
  hostname = galog$hostname)
}
\arguments{
\item{page}{a character string with the page which was visited}

\item{title}{a character string with the title of the page which was visited}

\item{hostname}{a character string with the hostname. Defaults to the environment variable GALOG_HOSTNAME and if not set uses 'GAlogger'.}
}
\value{
invisibly the result of a call to \code{\link[curl]{curl_fetch_memory}} which sends the data to Google Analytics
or an object of try-error if the internet is not working
}
\description{
Send pageviews to Google Analytics.
If someone visits a page, use this function to send the page and title of the page which is visited so that you can
easily see how users are using your application. \cr

Pageviews can be viewed in the Google Analytics > Behaviour tab or in the Real-Time part of Google Analytics.
}
\examples{
ga_set_tracking_id("UA-25938715-4")
ga_set_approval(consent = TRUE)

ga_collect_pageview(page = "/home")
ga_collect_pageview(page = "/simulation", title = "Mixture process")
ga_collect_pageview(page = "/simulation/bayesian")
ga_collect_pageview(page = "/textmining-exploratory")
ga_collect_pageview(page = "/my/killer/app")

x <- ga_collect_pageview(page = "/home", title = "Homepage", hostname = "www.xyz.com")
x$status_code
}
