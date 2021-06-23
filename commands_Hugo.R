if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("rstudio/blogdown")


library(blogdown)
new_site(theme = "wowchemy/starter-academic")

blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")
serve_site()


rstudioapi::navigateToFile("config.yaml", line = 3)
blogdown::config_netlify()
blogdown::check_netlify()
