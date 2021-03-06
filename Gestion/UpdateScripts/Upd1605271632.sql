USE GestionSystem
GO
ALTER procedure select_top5productsByCodigo (@UserId bigint, @Top bigint, @Chain varchar(50) )
as
begin
declare @chaintosearch varchar(50) = @Chain + '%'
select distinct top (@Top) CodigoInterno from Articulos where CodigoInterno like @chaintosearch and IdUser=@UserId
end
GO
ALTER procedure select_top5productsByName (@UserId bigint, @Top bigint, @Chain varchar(50) )
as
begin
declare @chaintosearch varchar(50) = @Chain + '%'
select distinct top (@Top) Descripcion from Articulos where Descripcion like @chaintosearch and IdUser=@UserId
end
go
