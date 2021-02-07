@echo off
for %%i in (%*) do (
type nul > %%i
)
