# SymmetricDS-repcat

SymmetricDS-repcat project aims to make SymmetricDS setup process automated for large number of tables. 

SymmetricDS Pro version comes with a GUI that lets you configure table triggers, routers, load filters. In case the numbers of tables to be replicated increase using the GUI for this process becomes non-feasible. Some problems need to be addressed.

  1. Creating tables triggers, routers and load filters using GUI is an error prone process.
  2. Creating tables triggers, routers and load filters using GUI might take lots of effort.
  3. Promoting the SymmetricDS replication to TEST, UAT and PROD environments might require too much effort.
  4. Removing and creating SymmetricDS replication might require too much effort.

SymmetricDS-repcat produce solutions to all these problems using a Replication Catalog(repcat) for your environment and creating tables triggers, routers and load filters automatically by using the repcat . 
