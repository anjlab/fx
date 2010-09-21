@echo off
cls
color 1E

echo �����������������������������������������������������������������������������Ŀ
echo �                                                                             �
echo � AnjLab FX schema for SQL Server 2005 / 2008                                 �
echo � Copyright (c) AnjLab 2008-2010, http://anjlab.com. All rights reserved.     �
echo � The code can be used for free as long as this copyright notice isnt removed �
echo �����������������������������������������������������������������������������Ĵ


if [%1]==[] (goto error)
if [%2]==[] (goto error)
if [%3]==[] (goto error)
if [%4]==[] (goto error)
if [%5]==[] (echo � Language is not set. Using English by default.                              �) 
if [%5]==[] (set language=Eng) else (set language=%5)

set server=%1%                                
set database=%2%
set user=%3%
set password=%4%

echo � Getting current directory                                                   �
for /f %%i in ("%0") do set curpath=%%~dpi
cd /d %curpath%

osql -S %server% -U %user% -P %password% -d %database% -n -Q "declare @SQL nvarchar(100) set @SQL = N'create schema fx' if not exists(select * from sys.schemas where name = 'fx') exec sp_executesql @SQL"
echo � Installing tables...                                                        �
for /f "tokens=*" %%a in ('dir /b tables\%language%\*.sql') do osql -S %server% -U %user% -P %password% -n -d %database% -i tables\%language%\%%a  
echo � Installing functions...                                                     �
for /f "tokens=*" %%a in ('dir /b functions\*.sql') do osql -S %server% -U %user% -P %password% -n -d %database% -i functions\%%a 
echo � Installing procedures...                                                    �
for /f "tokens=*" %%a in ('dir /b procedures\*.sql') do osql -S %server% -U %user% -P %password% -n -d %database% -i procedures\%%a 

echo �����������������������������������������������������������������������������Ĵ
echo � FX schema is installed successfuly                                          �
echo �������������������������������������������������������������������������������
goto exit

:error
echo � Installation could not neen performed because one or more parameters are    �
echo � missed. Script usage:                                                       �
echo �   - Server name                                                             �
echo �   - Database name                                                           �
echo �   - User name                                                               �
echo �   - User password                                                           �
echo �   - Language (Rus or Eng)                                                   �
echo �������������������������������������������������������������������������������

:exit
