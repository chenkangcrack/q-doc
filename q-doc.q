// q-doc Code Documentation Generator
//  Initialisation
// Copyright (C) 2014 Jaskirat M.S. Rajasansir
// License BSD, see LICENSE for details

.qdoc.cfg.baseFolder:`;

.qdoc.init:{
	-1 "*****";
	-1 "q-doc Code Documentation Generator";
	-1 "Copyright (C) 2014 Jaskirat M.S. Rajasansir";
	-1 "License BSD, see LICENSE for details";
	-1 "*****\n";

	.qdoc.cfg.baseFolder:.qdoc.getCwd[];

	system "l util.q";

	.qdoc.require `json;
	.qdoc.require `$"q-doc-config";
	.qdoc.require `$"q-doc-generator";
	.qdoc.require `$"q-doc-parser";

	.h.HTML:"html";
	.h.tx[`jsn]:{ enlist .j.j x };
	.h.ty[`jsn]:"application/json";

	if[not .util.isListening[];
		.log.warn "This process is not bound to any port. Please restart the process with the '-p' flag or use '\\p'.";
	];

	-1 "";
	.log.info "To initialise the parser, run .qdoc.parser.init with the folder root of your code.\n";
 };

.qdoc.getCwd:{
	if["w"~first string .z.o;
		:hsym first `$trim system "echo %cd%";
	];

	if["l"~first string .z.o;
		:hsym first `$trim system "pwd";
	];

	'nyi;
 };

.qdoc.require:{[lib]
	:.util.require[lib;.qdoc.cfg.baseFolder];
 };



.qdoc.init[];