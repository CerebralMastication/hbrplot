# hbrplot
Inspired by the HBR article ["Prioritize Which Data Skills Your Company Needs with This 2×2 Matrix"](https://hbr.org/2018/10/which-data-skills-do-you-actually-need-this-2x2-matrix-will-tell-you_) by
Chris Littlewood

The article contains this image which has become widely discussed:

<a href="url"><img src="https://cerebralmastication.github.io/hbr_2x2.png" align="center" width="500"></a>


This package attempts to make this type of graphic easily accessable to R users. Using the `hbrplot` package and it's one command, also called `hbrplot`, you can create 2x2 HBR images with `hbrplot`. First, install the package in R using `devtools`:

```{r}
devtools::install_github("CerebralMastication/hbrplot")
```

Then make up some junk:

```{r}
library('hbrplot')

hbrplot(
  items = c(
    'me',
    'you',
    'dog named Boo',
    'Kris Kristofferson',
    'Janis Joplin',
    'JD Long',
    'Random Trucker',
    'Patterson Hood',
    'Mike Cooley'
  ),
  quadrants = c('love', 'pet', 'feed', 'live off land'),
  x_labels = c('fast', 'slow'),
  y_labels = c('sadly', 'happily')
)

```

Then bask in the joy of a glorious plot:

<a href="url"><img src="https://cerebralmastication.github.io/hbrplot.png" align="center" width="500"></a>


