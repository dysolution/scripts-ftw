scripts... (for the Windows)
============================

I have a whole mess of Python scripts that I've been using to admin a Windows environment for years. As an exercise in learning Ruby and TDD/BDD, I'm porting them. Slowly.

ExMerge
-------
Tools for reporting on runs of ExMerge.
For instance, if you run a nightly job that exports all Exchange mailboxes on a server to corresponding PST files, this will report how many mailboxes were processed, how long the job took, which mailboxes failed, etc.

Latency
-------
Using the system ping, regularly check the ping time to each host and persist the measurements in a database. These data can be analyzed to determine when network links are excessively latent.
