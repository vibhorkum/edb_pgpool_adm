# contrib/pcp/Makefile
MODULE_big = pgpool_adm
OBJS = pgpool_adm.o
PG_CPPFLAGS = -I$(libpq_srcdir) -I../../include/pcp

EXTENSION = pgpool_adm
DATA = pgpool_adm--1.0.sql
SHLIB_LINK =  -L /usr/edb/pgpool3.6/lib -lpcp 
PG_CONFIG ?= pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

