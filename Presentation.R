library(sidescroller)
library(here)


pres <- sidescroller(
  list(
    htmltools::htmlDependency(
      name = "darker-grotesque",
      version = "1.0",
      src = c(href = "https://fonts.googleapis.com/css?family=Darker+Grotesque&display=swap"),
      stylesheet = ""),
    htmltools::htmlDependency(
      name = "fontts",
      version = "1.0",
      src = c(href = "https://fonts.googleapis.com/css2?family=Gruppo&display=swap"),
      stylesheet = ""),
    htmltools::htmlDependency(
      name = "font-awesome",
      version = "4.7.0",
      src = c(href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/"),
      stylesheet = "font-awesome.min.css"),
  htmltools::htmlDependency(
    name = "RStudio_pres",
    version = "1.0",
    src = c(href = "www"),
    script = c("rstudio_conf_2020.js","prism.js"),
    stylesheet = c("RStudio_conf_2020.css","prism.css"))))

## Title ----
pres_title <- pres %>% 
  title_slide(
    title = tags$div(style = "font-weight:200;font-size:100px","R Package Validation Framework"),
    subtitle = list(
      
                 HTML("<p class='subtitle_text' style = 'font-size: 70px;margin-bottom: -50px;'>Ellis Hughes</p>"),
                 HTML(paste0(
                   "<p class='subtitle_text'>",
                   "<i href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none; color: white' class='fa fa-twitter'></i> @ellis_hughes",
                   "</p>",
                   "<p class='subtitle_text'>",
                   "<i href = 'https://github.com/thebioengineer' style = 'text-decoration: none; color: white' class='fa fa-github'></i> thebioengineer",
                   "</p>")),
                 "Fred Hutch Cancer Research Center - SCHARP - VISC"
                 ),
    style = "font-family: 'Darker Grotesque',Arial;
    font-size: 40px;
    font-weight: 300;
    background-image: url(img/title_background.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;"
  )

# ## Bio ----
pres_bio <- pres_title %>%
  slide_markdown(title = tags$div(style = 'width:1000px',"Ellis Hughes"),"
      <div style = 'height:100%'>
        <div style = 'display:inline-block; vertical-align: top; padding-right:20px; font-size: 45px;margin-left: 50px;'>
        - <span style='font-weight: bold;'>Statistical Programmer</span>
           - Statistical Genetics
           - HIV Vaccine Research
        <br>
        - <span style='font-weight: bold;'>Community</span>
          - Seattle UseR Organizer
          - Cascadia R Conf
          - TidyX Screencast
          
        <ul>
        <li><p><i href = 'https://twitter.com/ellis_hughes' style = 'text-decoration: none; color: white' class='fa fa-twitter'></i> @ellis_hughes</p></li>
        <li><p><i href = 'https://github.com/thebioengineer' style = 'text-decoration: none; color: white' class='fa fa-github'></i> thebioengineer</p></li>
        </ul> 
        
        </div>
        <div style = 'display:inline-block;height:inherit;'>
         <img src = 'https://thebioengineer.github.io/images/r_in_pharma/img/ellis_hughes.jpg' style = '-webkit-transform: rotate(90deg);
                 -moz-transform: rotate(90deg);
                 -o-transform: rotate(90deg);
                 -ms-transform: rotate(90deg);
                 transform: rotate(90deg);
                 height: 350px;
                 margin: 100px;'/>
         <img src='img/logos/scharp.png' style='max-width: 350px;margin: auto;'/>       
        </div>
      </div>", style = "margin-top:50px")
    
### Intro to the Pain ----

pres_val_explained <- pres_bio %>% 
  
  slide_multipanel(title = NULL,
                   
  panel(tags$div(tags$div(style = "font-weight:200;margin:auto;font-size: 100px; text-position:center",
      p("Is it", style = "margin-bottom:0px"),
      HTML("<p style = 'font-size: 125px; margin-bottom:0px'><span style = 'color:#25FF3C;'>Validated</span>?</p>")),
      class = "center_content"), style = "width:1500px"),
  
  panel(tags$div(tags$div(style = "font-weight:200;margin:auto;text-position:center",
      p("What is", style = "margin-bottom:0px"),
      HTML("<p style = 'font-size: 125px; margin-bottom:0px'><span style = 'color:#25FF3C;'>Validation</span>?</p>")),
      class = "center_content"), style = "width:1500px;font-size: 100px;"),
  
  panel(tags$div( tags$div(markdown_to_html("
  Establishing documentary evidence that your software performs a
  
    - Procedure
    - Process
    - Activity
  
  in compliance with specifications with a high degree of assurance.
  ")),class = "center_content"), style = "margin-top: 100px;"),
  
  panel(tags$div(tags$div(markdown_to_html("
  Why do we care about Validation?
  
  - Required for FDA submission
  
  "), style = "margin-top:50px"),class = "center_content"),
  style = "width: 1000px; margin-top: 100px;" ),  
        
  panel(tags$div(tags$div(markdown_to_html("
  Unspoken Benefits
  
  - Improved Quality and Safety
  
  - Results in Faster Processing
  
  - Promotes Trust
  "), style = "margin-top:50px"),class = "center_content"),style = "margin-top: 100px;"),

  style = "font-size: 50px;margin-top:100px;")

pres_pain <- pres_val_explained %>% 
  slide_multipanel(
    title = tags$div(style = 'width:1000px',"Validation in Practice"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
        img(src = "img/jim_carrey_file.gif", style = "height:100%"),
        div( style = "bottom:0px;position:absolute",
        p("Tom Shadyac, et al. BRUCE ALMIGHTY. USA, 2003.", style = "font-size:20px;color:grey;margin-bottom:0px"),
        p("https://media1.tenor.com/images/3267a92e265348c0cc435a7989d65e23/tenor.gif", style = "font-size:20px;color:grey")
        )
  ))),
  
  panel(div(div(markdown_to_html("
  Fill out a form for specifications, planned uses, environments"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 100px; font-size: 50px; font-size: 45px; margin-right: 600px;"),
  
  panel(div(div(markdown_to_html("
  Write Code and record function authorship in some excel file"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),  
  style = "margin-top: 200px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Get another form to document test cases, testing environment"), 
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 300px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Maybe the last form to show that testing plan is comprehensive"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 400px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Manually evaluate tests and screenshot results"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 500px; font-size: 45px; margin-left: -600px;"),
  
  panel(div(div(markdown_to_html("
  Review documentation, combine into final validation packet for release"),
  style = "width: 1300px; line-height: 75%;"),
  style = "position:fixed;"),
  style = "margin-top: 600px; font-size: 45px; margin-left: -600px;"),
  
  panel(
    div(class = "center_content",
        div( style = "margin: auto; height: 130%;",
             img(src = "img/mario_game_over.gif", style = "height:100%"),
             div( style = "bottom:0px;position:absolute",
                  p("Super Mario Bros., Nintendo, 1985, NES", style = "font-size:20px;color:grey; margin-bottom:0px"),
                  p("source: https://gfycat.com/earnestgiganticdorado", style = "font-size:20px;color:grey")
             )
        )),
    style = "padding-left: 600px;padding-right: 600px;")
  )


## Intro To Validation ----

pres_friends <- pres_pain %>% 
  slide_multipanel(title = NULL,
                   
  panel(tags$div(
    tags$p("VALIDATION",style = "color: red; font-size: 250px; margin:auto; font-family: 'Gruppo', monospace;margin-top: 250px"),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin: auto;display: inline-flex; font-family: monospace;;margin-top: 200px",
             p("+", style = "font-size: 300px;margin-bottom:70px;margin-top:-30px"),
             tags$img(src = "img/Rlogo.png",style = "height:300px;"), 
    ),
    class = "center_content")),
  
  panel(tags$div(
    tags$div( style = "margin:auto;",
              tags$img(src = "img/step_brothers_best_friends.webp", style = "height:600px; margin:auto;"),
              div( style = "bottom:0px;position:absolute",
                  p("Adam Mckay, et al. STEP BROTHERS . USA, 2008.",style = "font-size:20px;color:grey;margin-bottom:0px;"),
                  p("https://bethgittings.tumblr.com/post/34641171446",style = "font-size:20px;color:grey")
                )),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin:auto;",
              tags$img(src = "img/rmarkdown_testthat_roxygen2.png", 
                       style = "height:600px; margin:auto;")
             ),
    class = "center_content")),
  
  panel(tags$div(
    tags$div(style = "margin:auto;",
             tags$img(src = "img/push-button-get-validation.PNG", 
                      style = "height:600px; margin:auto;")
    ),
    class = "center_content")),
  
  panel(tags$iframe(src = "img/Validate.pdf?#zoom=140", style = "width: 1200px; height: 100%", frameborder="0", marginwidth="0"))
  
  )


## Validation ----
pres_val_elements <- pres_friends %>% 
  slide_multipanel(title = tags$div(style = 'width:800px',"R Package Validation Framework"),
  panel_markdown("
  
  <div style='font-size: 45px;margin-left: 20px;'>
  Key Elements
  
    - 1. Record Specifications
    
    - 2. Write Code
    
    - 3. Record Test Cases
    
    - 4. Write Test Code
    
    - 5. Generate Documentation
  
  </div>", style = "width:600px; margin-top: 140px;"),
  panel_markdown("
  Advantages
    
    - R package development process
    
    - Native to programmers
    
    - Iterative development
    
    - Reusable and Extensible
    
  ", style='font-size: 45px;margin-top:140px; '))




## Specifications ----
pres_val_specification <- pres_val_elements %>% 
  slide_multipanel(title = tags$div(style = 'width:700px',"Start at the Beginning"),
                   
  panel_markdown("
  Specifications
  
  - Define the expectations of the package
  
  <img src='img/blueprint_plans.jpg' style='width: 500px; margin: auto'/>
  <div style = 'bottom:0px;position:absolute'>
  <p style = 'font-size:20px;color:grey;margin-bottom:0px'>Adrian Michael, CC BY-SA 3.0 &lt;https://creativecommons.org/licenses/by-sa/3.0&gt;, </p>
  <p style='font-size:20px;color:grey'>via Wikimedia Commons https://commons.wikimedia.org/wiki/File:Waldhaus_Gasterntal_Plan5.JPG.</p>
  </div>

  ", style = "font-size: 45px; margin-top: 140px;font-size: 50px"),
  
  panel_markdown("
  
  A well written specification:
  
    - What will the thing do?
    
    - What are the inputs? 

    - What are the expected ouputs? 
    
    - When should warnings/errors be triggered?
    
    - Do not rely on external knowledge
    
  ", style = "font-size: 45px; margin-top: 140px;"),

  panel_markdown("
  
  ```
  - My presentation will 
    - The contents will cover my teams approach to validation
    - Be 15-20 minutes long
    - Be entertaining 
  
  ```
  ", style = "font-size: 60px; margin-top: 300px;"),
  
  panel_markdown("
  
  Specification Files
  
    - Machine-readable
    
    - Independent
    
    - Close proximity to the task

                 
  ", style='font-size: 45px;margin-top:140px; '),
  
  panel_markdown("
  
  Documenting Specifications
    
    - _Who_ wrote the specifications
    - _When_ it was written
    
  ", style='font-size: 45px;margin-top:140px; '),
  
  panel(
  div(div(markdown_to_html("
  
  Example of an specification file written in markdown
  
  ```{r eval=FALSE, echo = TRUE}
  
  #' @title Specifications For Presentation Success
  #' @section Last Updated By:
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2025/01/01
  
  + _Specifications_
    + 1.1 Presentation must explain validation procedure.
    + 1.2 Presentation will be between 15-20 minutes long
    + 1.3 Be entertaining, sucess measures by causing at least 3 people to laugh.
    + 1.4 (Optional) Fame and Glamour and start branded accessories chain.
    
  ```
  "), 
  style = "margin:auto"),
  class = "center_content"),
  style = "font-size: 45px;"))



## Coding ----
pres_val_code <- pres_val_specification %>% 
  
  slide_multipanel(title = tags$div(style = 'width:1000px',"Lets Get Down to Business"),
                   
 panel(tags$div(tags$div(
    markdown_to_html("
    It's code development time!
    "),style= "margin:auto"),
    class = "center_content"), style = "margin-top: 100px; font-size: 50px;"),
  
  panel(tags$div(tags$div(
    tags$img(src = "img/I_dont_need_help.gif", style = "height:800px"),
    div( style = "bottom:0px;position:absolute",
         p("Queen - I Want To Break Free, 1984",style = "font-size:20px;color:grey;margin-bottom:0px;"),
         p("https://imgur.com/gallery/QC6Nllw",style = "font-size:20px;color:grey")
    ),
    style = "margin:auto;"), 
    class = "center_content"), style = "margin-top: 50px;"),
  
  panel_markdown("
  Documenting Code
  
    - Who wrote the code
    - When they wrote it
    - Update ownership when code are updated
  ", style = "font-size: 45px;margin-top:140px"),
  
  panel_markdown("
  
  *Roxygen Tags*
  
    - <span style='color:indianred;'>@section Last Updated By:</span>
    - <span style='color:indianred;'>@section Last Update Date:</span>
    
  ", style = "margin-top: 140px; font-size: 45px;"),
  
  panel_markdown("
  Value
  
    - Close proximity to the task
    - Natural extension of documentation already being performed
    - Adds to documentation of functions
                 
  ", style = "margin-top: 140px; font-size: 45px;"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @examples
  #' joke('To the person who stole my presentation -','I hope you do not Excel.')
  #'      
  #' @section Last Updated By:
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2030/01/01
  
  joke <- function(Setup, Punchline){
    print(Setup)
    Sys.sleep(3)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  
  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @title Deliver Jokes
  #' @description 
  #'    Deliver jokes with punchlines. Wait 3 seconds for the punchline.
  #' @param Setup Joke setup
  #' @param Punchline Joke punchline
  #' @param wait how long to wait to serve the punchline
  #' @examples
  #' joke('Why did the PowerPoint Presentation cross the road?','To get to the other slide.')
  #'      
  #' @section Last Updated By:
  #' Joe King
  #' @section Last Update Date:
  #' 2030/04/01
  
  joke <- function(Setup, Punchline, wait = 3){
    print(Setup)
    Sys.sleep(wait)
    print(Punchline)
  }
  ```
  ", style = "width: 1400px"),
  
  panel(div(
    img(src = "img/joke_man_page.PNG",
        style = "max-height: 110%;height:1000px"),
    class = "center_content")))


## Test Cases ----
pres_val_test <- pres_val_code %>% 
  slide_multipanel(title = tags$div(style = 'width:1000px',"Connecting the Dots"),
                   
  panel(div(markdown_to_html("
  Test Cases draw the connections
  
  What you wanted to do <i style = 'text-decoration: none; color: white' class='fa fa-angle-double-right'></i> What you did
  ")),
   div(
     img(src = 'img/How-to-find-innovation.jpg',style = 'height:400px;margin:auto'),
       div( style = "bottom:0px;position:absolute",
            p("Source: https://nc3t.com/wp-content/uploads/2014/10/How-to-find-innovation.jpg",style = "font-size:20px;color:grey")
       )),
   style = "margin-top: 150px;font-size: 50px;margin-left:20px"),
  
  panel(div(div(markdown_to_html("
  
  A single test case can satisfy <span style='color:purple'>multiple</span> specifications
  
  <span style='color:red'>Every</span> specification must be satisfied by least one test case
  
  The <span style='color:orange'>risk</span> of a specification drives the level of testing performed
                 
  "),style = "margin:auto"),class = "center_content"),style = "font-size: 50px;"),
  
  panel_markdown("
  Good Test Cases
  
    - Which specifications are being met and how
    - Detail the required setup
    - Are a recipe to get to desired output
    - Clear expectations of what to test against
    - <span style='color:red'>No code is provided</span>

  ",style = "font-size: 45px;margin-top:140px;"),
  
  panel_markdown("
  Documenting Test Cases
  
    - _Who_ wrote the Test
    - _When_ they wrote it
    - _Which_ specifications are satisfied
    
  ",style = "font-size: 45px;margin-top:140px;"),
  
  panel_markdown("
  
  *Roxygen Tags*
  
    - <span style='color:indianred;'>@section Last Updated By:</span>
    - <span style='color:indianred;'>@section Last Update Date:</span>
    - <span style='color:indianred;'>@section Specification coverage:</span>

  ", style = "margin-top: 140px; font-size: 45px;"),

  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}
  #' @section Last Updated By: 
  #' Ellis Hughes
  #' @section Last Update Date:
  #' 2030/01/01
  #' @section Specification coverage:
  #' T1.1: S1.1, S1.2, S1.3

  + _Test Cases_

  + Setup: Create Presentation 
    
  + T 1.1 Test that specifications 1.1, 1.2, and 1.3 are met by practicing presentation on unsuspecting co-workers
  
    - Present to a captive audience of coworkers and later your significant other
    + T 1.1.1 Test that the presentation was informative by asking what your audience learned.
    + T 1.1.2 Time the presentation and make sure it was between 15 and 20 minutes.
    + T 1.1.3 Test that you were entertaining by counting the amount of chuckles (>3)
        + T 1.1.3.1 Alternatively, eye-rolls from your significant other (>4)
  ```
  ", style = "width: 1400px"))

## Test Code ----

pres_val_test_code <- pres_val_test %>% 
  slide_multipanel(title = tags$div(style = 'width:1000px',"Filling In the Lines"),
  panel_markdown("
  
  Test Coding
  
    - Implement Test Cases
  
    - Record results
  
    - Third Party 
  
  ", style = "margin-top:140px; font-size: 45px;"),
  panel_markdown("
  Benefits
    
    - Resolves interpretation errors
      - Documentation and examples
      - Test cases
      - Specifications
    
    - Identify improvements
                 
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  
  panel_markdown("
  <div class = 'center_content'>
  <div style = 'margin:auto; width: 100%; margin-top:180px'>
  <img src='https://github.com/r-lib/testthat/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  <img src='https://github.com/r-lib/roxygen2/raw/master/man/figures/logo.png' style='width: 49%;display:inline-block;'/>
  </div></div>
  ", style = "width: 500px;font-size: 60px;"),
  
  
  panel_markdown("
  Documenting Test Code:
  
    - Who wrote the Test Code
    - When they wrote it
    
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  
  Roxygen Tags
  
    - <span style='color:indianred;'>@section Last Updated By:</span>
    - <span style='color:indianred;'>@section Last Update Date:</span>

  ", style = "margin-top: 140px; font-size: 45px;"),


  panel_markdown("
  ```{r eval=FALSE, echo = TRUE}

  #' @title T1.1
  #' @section Last Updated By: 
  #' Jess Terr
  #' @section Last Update Date:
  #' 2030/01/01
  
  test_that('T1.1',{
    
    joke_result <- joke('What do you call a fake noodle?','An Impasta')
    expect_true(is_dad_joke(joke_result))
    expect_true(caused_laugher(joke_result))
    expect_true(embarrased_significant_other(joke_result))
    
  })
  
  ```
  ",style = "margin-top:140px;"),
  
  panel_markdown("
  {testthat}
  
    - Familar framework
    - Can be run and developed interactively or in batch

  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  Reporter Objects from {testthat}
  
    - Track each test and expectation
    - Reports success
    - Records failure mode
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  Standard Reporter Object output<br><br>
  
  ```{r, eval = FALSE}
  |  OK F W S | Context
  |   3       | test_case_001 [3.2 s]
  
  ══ Results ═══════════════════════════════════════
  Duration: 3.2 s
  
  OK:       3
  Failed:   0
  Warnings: 0
  Skipped:  0
  ```           
  ",style = "font-size: 45px; margin-top:140px;"),
  
  panel_markdown("
  
  Using a custom function to extract results from Reporter Object<br><br>

  <img src='img/test_table_example.PNG' style='width: 700px; margin: auto'/>
  
  ",style = "font-size: 50px; margin-top:150px;"))

## Documentation ----

pres_val_doc <- pres_val_test_code %>% 
  slide_multipanel(title = tags$div(style = 'width:1000px',"Proof is in the Pudding"),
                   
  panel_markdown("
  
  What we have so far
  
  - 1. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Specifications
  - 2. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Code
  - 3. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Test Cases
  - 4. <i style = 'text-decoration: none; color: green' class='fa fa-check-square'></i> Test Code
  - 5. <i style = 'text-decoration: none; color: #272727' class='fa fa-check-square'></i> Validation Documentation
  
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  Validation Documentation
  
    - Written using Rmarkdown

    - Sign off/Approvals Section
  
    - Environment Information
      - R version
      - Package dependencies and versions
      
    - Any other organizational requirements
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  
  Using Rmarkdown to dynamically

    - Read in specifications
      
    - Scrape Code authorship
      
    - Read in Test cases
      
    - Excute test code to capture results
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel(tags$div(
    tags$div(style = "margin:auto;",
             tags$img(src = "img/rmarkdown_testthat_roxygen2.png", 
                      style = "height:600px; margin:auto;")
    ),
    class = "center_content")),
  
  panel(div(
    HTML("<img src='img/captain_planet.gif' style = 'height:800px;margin:auto' />"),
    div( style = "bottom:0px;position:absolute",
         p("'Captain Planet and the Planeteers' Theme Song: Turner Broadcasting System",style = "font-size:20px;color:grey"),
         p("Source: https://www.syfy.com/sites/syfy/files/styles/1100xauto/public/captain-planet.gif",style = "font-size:20px;color:grey")
    ),
    
    class = "center_content"),style = "margin-top: 50px;"),
  
   panel_markdown("
   <p style='margin-bottom: 10px'>Generate a <span style='color:green'>reproducible</span> report at </p>
   <p style='margin-bottom: 10px'>the <span style='color:red'>click</span> of a button </p>
   <p style='margin-bottom: 10px'>and </p>
   <p style='margin-bottom: 10px'>on <span style='color:orange'>build</span> of the package</p>
  ",style = "font-size: 45px;margin-top: 140px; font-size:100px"),
  
  panel(
    tags$iframe(src = "img/Validate.pdf?#zoom=140",
                style = "width: 1200px; height: 100%",
                frameborder="0", marginwidth="0"),
    style = "margin-top: 50px; padding-left:200px; padding-right:200px"),
  
  panel_markdown("
  ```
  -- DESCRIPTION
  -- man
  -- NAMESPACE
  -- tests
  -- R
    |__jokes.R
  -- vignettes
    |__Validation.Rmd
    |__Validation.pdf
    |__Validation
      |__Specifications
        |__specification_001.Rmd
      |__Test_Cases
        |__test_case_001.Rmd
      |__Test_Code
        |__test_code_001.R
  ```               
  ",style = "font-size: 40px;margin:auto;"))
  

### Ongoing work ----
pres_ongoing <- pres_val_doc %>% 
  slide_multipanel(title = tags$div(style = 'width:1000px',"Where Are We Now?"),
                   
  panel(style = "width:0px;padding:0px;"),
                   
  panel_markdown("
  
  White Paper
  
    - Describing the framework process in detail
    
    - Generalizing and recording optimal process

  <img src='img/construction_ahead.png' style='width: 400px; margin: auto'/>
  
  ",style = "font-size: 45px;margin-top: 140px;"),
  
  panel_markdown("
  
  {valtools} R Package
  
    - In progress
  
    - Based on white paper
    
    - Provide tooling not available though {usethis} or {devtools}
    <div style='margin-top:50px'>
    <div style='margin:auto;width:fit-content;'>
    <i style ='font-size: 100px;color: white;margin:auto' class='fa fa-cog fa-spin'></i>
    </div>
    </div>
  ",style = "font-size: 45px;margin-top: 140px;"))



## Conclusion ----
pres_conclusion <- pres_ongoing %>% 
  slide_multipanel(title = NULL,
  panel_markdown("
  ### Many thanks to all involved at Fred Hutch
  
  - Marie Vendettuoli
  - Anthony Williams
  - Jimmy Fulp 
  - Bharathi Lakshminarayanan
  - Rafael Kuttner
  - Alicia Sato
  - Shannon Grant
  - Paul Stutzman
  - Kate Ostbye
  
  As well as the PHUSE R Package Validation Framework Working Group
  ", style = "font-size: 40px;"))


## Final ----

pres_forever <- pres_conclusion %>% 
  slide_wide(title = NULL,
             tags$div(
               tags$img(src = "img/val_and_R_forever2.png", 
                        style = "height:100%; margin:auto;"), 
               class = "center_content", style = "height: 110%"))   
                   
pres_final <- pres_forever %>%  
  slide_markdown( title = tags$div(style = 'width:1600px; font-size: 120px',"Thank You"),"
  
   <div style = 'margin:auto;padding-top:20px;text-align:left; z-index:21; position: relative;'>
   <br>
   <div style = 'background-color: #ffffff;opacity: .5;border-radius: 10px;width: 1100px;padding: 20px;font-size: 60px;margin:auto;color: black;'>
    <br>
    <p style = 'margin-bottom: 0;'><i style = 'text-decoration: none;' class='fa fa-github-square'></i> github.com/thebioengineer/validation</p>
    <br>
    <div style = 'margin:auto'>
    <p style = 'margin-bottom: 0;'><i style = 'text-decoration: none;'  class='fa fa-twitter-square'></i> @ellis_hughes</p>
    </div>
    </div>
   </div>
   
   <p style = 'margin-bottom: 0;'> Presentation brought to you by {sidescroller} </p>
   
   <div style='right: -20%;position: absolute;top: 25%;z-index: 0;opacity: 0.5;'>
    <img src='img/FH_logo_improved.png'/>
   </div>
   
   ", style = "text-align: center;width:1600px; margin-top: 50px;")

## Save Presentation ----

save_sidescroller(pres_final,
                  here("index.html"))


