# Create a webpage with blogdown
#### this is a retrived from https://shilaan.rbind.io/post/building-your-website-using-r-blogdown/  
## 1. Create GitHub repository 

## 2. Create project with Version Control in RStudio

## 3. Create website with {blogdown}

library(blogdown)
new_site(theme = "wowchemy/starter-hugo-research-group") # you can pick different themese from https://themes.gohugo.io 

#### note: Type y in your Console. 

## 4. Step 4: Push ⬆︎ to GitHub 
### 4.1 create a gitignore file
file.edit("gitignore")

### 4.2 Add these files to gitignore
#.Rproj.user
#.Rhistory
#.RData
#.Ruserdata
#.DS_Store
# Thumbs.db

### 4.3 Check files
blogdown::check_site()

## 5 Deploy site with Netlify
# ☞ Select New site from Git > Continuous Deployment: GitHub
# ☞ Select your website repository
# ☞ Deploy Site
# ☞ Settings > Site information > Change site name

## 6 Setting Rstudio-api
install.packages("rstudioapi")
library(rstudioapi) # to easily navigate to files
rstudioapi::navigateToFile("~/Desktop/projects/EUITREL/config/_default/config.yaml")
blogdown::check_site() # checks to resolve critical [TODOs] before commit

# check the version of HUGO 
rstudioapi::navigateToFile("netlify.toml") 

## 7 Customize your site with Wowchemy 
### 7.1 Personal information 
rstudioapi::navigateToFile("content/authors/admin/_index.md")

rstudioapi::navigateToFile("content/home/about.md")

### 7.2 other menu items
rstudioapi::navigateToFile("config/_default/menus.yaml")

### 7.3 pick a color theme
rstudioapi::navigateToFile("config/_default/params.yaml")

blogdown::build_site()
blogdown::serve_site()

# creting posts

blogdown::new_post(
  title = "kayıt",
  ext = '.md',
  subdir = "kayıt"
)

rstudioapi::navigateToFile("content/post/2022-06-19-wep-page-with-r/index.Rmarkdown")


# publication page 
#{{% callout note %}}
#Click the _Cite_ button above to demo the feature to enable visitors to import publication metadata into their reference management software.
#{{% /callout %}}

# {{% callout note %}}
# Create your slides in Markdown - click the _Slides_ button to check out the example.
# {{% /callout %}}

# Supplementary notes can be added here, including [code, math, and images](https://wowchemy.com/docs/writing-markdown-latex/). 
