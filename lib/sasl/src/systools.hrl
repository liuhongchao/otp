%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 1996-2009. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%
%%

%%
%% systools.hrl
%%

%% this is the structure of a release

-record(release,
	{
	  name,		%% Name of the release, string().
	  vsn,		%% Version of the release, string().
	  erts_vsn,	%% Version of erts, string().
	  applications,	%% [{Name,Vsn,Type}] list of applications incorporated
	  		%% in the release, Name = Type = atom(), 
			%% Vsn = string().
	  incl_apps	%% [{Name,[App]}] list of include specifications,
			%% (appl Name includes appls [App]),
			%% Name = App = atom().
	 }).

-record(application, 
	{name,			%% Name of the application, atom().
         type = permanent,	%% Application start type, atom().
	 vsn = "",         	%% Version of the application, string().
	 id = "",		%% Id of the application, string().
	 description = "",	%% Description of application, string().
	 modules = [],		%% [Module | {Module,Vsn}] of modules 
				%% incorporated in the application, 
				%% Module = atom(), Vsn = string().
	 uses = [],		%% [Application] list of applications required
	 			%% by the application, Application = atom().
	 includes = [],		%% [Application] list of applications included
	 			%% by the application, Application = atom().
	 regs = [],		%% [RegNames] a list of registered process 
				%% names used by the application, RegNames =
				%% atom().
	 env = [],		%% [{Key,Value}] environment variable of 
	 			%% application, Key = Value = term().
	 maxT = infinity,	%% Max time an application may exist, 
				%% integer() | infinity.
	 maxP = infinity,  	%% Max number of processes in an application,
	 			%% integer() | infinity.
	 mod = [],		%% [] | {Mod, StartArgs}, Mod= atom(), 
				%% StartArgs = list().
	 start_phases = [],	%% [] | {Phase, PhaseArgs}, Phase = atom(),
				%% PhaseArgs = list().
         dir = ""		%% The directory where the .app file was 
				%% found (internal use).
	}).




