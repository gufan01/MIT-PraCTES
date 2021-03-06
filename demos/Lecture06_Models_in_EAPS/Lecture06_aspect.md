### Helpful links and documentations for `ASPECT`

- Website (has manual, parameter menu): [https://aspect.geodynamics.org]()
- Github: [https://github.com/geodynamics/aspect]()
- CIG site: [https://geodynamics.org/cig/software/aspect/]()
- Wiki (has tutorial/slides): [https://wiki.geodynamics.org/software:aspect:start]()
- Manual: [https://geodynamics.org/cig/software/aspect/aspect-manual.pdf]()
- Parameters: [https://aspect.geodynamics.org/doc/parameter_view/parameters.xml]()
- Jupyter notebook: [https://github.com/ljhwang/ASPECT-Jupyter]()
- Tutorial: [https://geodynamics.org/cig/events/calendar/2016-cig-all-hands-meeting/aspect-tutorial/tutorial/]()


### Running `ASPECT` on the Google cloud machine

It's already installed, if you want to add to path in `~/.bashrc`, just add the line:

`export PATH=$PATH:/usr/local/aspect/build`

Download all of the parameter files/documentation:

`git clone https://github.com/geodynamics/aspect.git`

One example:

```
cd cookbooks
aspect convection-box.prm
```


