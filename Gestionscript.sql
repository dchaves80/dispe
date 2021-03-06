USE [Gestion]
GO
/****** Object:  Table [dbo].[ColorCodes]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ColorCodes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[colorcode] [varchar](8) NOT NULL,
 CONSTRAINT [PK_ColorCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ColorCodes] ON
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (1, N'#8BC34A')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (2, N'#D1F0AE')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (3, N'#B1E17B')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (4, N'#6BA429')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (5, N'#4E840F')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (6, N'#3A9964')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (7, N'#96CFAF')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (8, N'#61B183')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (9, N'#20814A')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (10, N'#0C6834')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (11, N'#D76D52')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (12, N'#FFC7B9')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (13, N'#F89F87')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (14, N'#B5492D')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (15, N'#912C11')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (16, N'#BA4773')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (17, N'#E9A9C1')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (18, N'#D6759B')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (19, N'#9C2754')
INSERT [dbo].[ColorCodes] ([Id], [colorcode]) VALUES (20, N'#7E0F3A')
SET IDENTITY_INSERT [dbo].[ColorCodes] OFF
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varchar](150) NOT NULL,
	[DNI_CUIT_CUIL] [varchar](100) NOT NULL,
	[Pais] [varchar](100) NOT NULL,
	[Provincia] [varchar](100) NOT NULL,
	[Localidad] [varchar](100) NOT NULL,
	[Domicilio] [varchar](100) NOT NULL,
	[Observaciones] [text] NOT NULL,
	[TipoIva] [varchar](100) NOT NULL,
	[Descuento] [decimal](18, 4) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[LimiteDeCredito] [decimal](18, 4) NOT NULL,
	[Suspendida] [bit] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CategoriaAFIP]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategoriaAFIP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoriaAFIP] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_TipoCategoriaAFIP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_CategoriaAFIP] UNIQUE NONCLUSTERED 
(
	[IdCategoriaAFIP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CategoriaAFIP] ON
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (1, 1, N'RESPONSABLE INSCRIPTO')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (2, 2, N'RESPONSABLE NO INSCRIPTO')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (3, 3, N'MONOTRIBUTISTA')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (4, 4, N'EXENTO')
INSERT [dbo].[CategoriaAFIP] ([Id], [IdCategoriaAFIP], [Nombre]) VALUES (6, 5, N'SIN SITUACION ANTE EL IVA')
SET IDENTITY_INSERT [dbo].[CategoriaAFIP] OFF
/****** Object:  Table [dbo].[Articulos]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NULL,
	[IdProveedor] [bigint] NULL,
	[CodigoInterno] [varchar](50) NULL,
	[CodigoBarra] [varchar](50) NULL,
	[Descripcion] [varchar](255) NULL,
	[PrecioNeto] [decimal](18, 4) NULL,
	[IVA] [decimal](18, 4) NULL,
	[PrecioCompra] [decimal](18, 4) NULL,
	[PorcentajeGanancia] [decimal](18, 4) NULL,
	[PrecioFinal] [decimal](18, 4) NULL,
	[IdUnidad] [bigint] NULL,
	[CantidadINT] [bigint] NULL,
	[CantidadDEC] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON
INSERT [dbo].[Articulos] ([Id], [IdUser], [IdProveedor], [CodigoInterno], [CodigoBarra], [Descripcion], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [IdUnidad], [CantidadINT], [CantidadDEC]) VALUES (1, 1, 1, N'100', N'100', N'el cien', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, -12, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[Articulos] ([Id], [IdUser], [IdProveedor], [CodigoInterno], [CodigoBarra], [Descripcion], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [IdUnidad], [CantidadINT], [CantidadDEC]) VALUES (2, 1, 1, N'2', N'2', N'2', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), 1, -2, CAST(0.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[Articulos] OFF
/****** Object:  Table [dbo].[Facturas]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facturas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[SerialAFIP] [varchar](255) NOT NULL,
	[SerialTICKET] [varchar](255) NOT NULL,
	[Printed] [bit] NOT NULL,
	[PrintAgain] [bit] NOT NULL,
	[Transmitida] [bit] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Tipo] [varchar](5) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Domicilio] [varchar](255) NOT NULL,
	[Telefono] [varchar](255) NOT NULL,
	[Localidad] [varchar](255) NOT NULL,
	[Cuit] [varchar](255) NOT NULL,
	[RepInsc] [bit] NOT NULL,
	[RespNoInsc] [bit] NOT NULL,
	[Exento] [bit] NOT NULL,
	[ConsumidorFinal] [bit] NOT NULL,
	[RespMonotributo] [bit] NOT NULL,
	[Contado] [bit] NOT NULL,
	[CtaCte] [bit] NOT NULL,
	[IdCtaCte] [bigint] NOT NULL,
	[Cheque] [bit] NOT NULL,
	[Dni] [varchar](255) NOT NULL,
	[Tarjeta] [bit] NOT NULL,
	[Idtargeta] [bigint] NOT NULL,
	[NumeroTarjeta] [varchar](50) NOT NULL,
	[Observaciones] [text] NOT NULL,
	[SubTotal] [decimal](18, 4) NULL,
	[Ivas] [bit] NULL,
	[Total] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (1, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F01252756 AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(120.0000 AS Decimal(18, 4)), 1, CAST(120.0000 AS Decimal(18, 4)))
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (2, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F01252E6D AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(120.0000 AS Decimal(18, 4)), 1, CAST(120.0000 AS Decimal(18, 4)))
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (3, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F012534A9 AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(120.0000 AS Decimal(18, 4)), 1, CAST(120.0000 AS Decimal(18, 4)))
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (4, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F0125D0BA AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(120.0000 AS Decimal(18, 4)), 1, CAST(120.0000 AS Decimal(18, 4)))
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (5, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F0125E7CD AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(600.0000 AS Decimal(18, 4)), 1, CAST(600.0000 AS Decimal(18, 4)))
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (6, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F01261F49 AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(130.0000 AS Decimal(18, 4)), 1, CAST(130.0000 AS Decimal(18, 4)))
INSERT [dbo].[Facturas] ([Id], [IdUser], [SerialAFIP], [SerialTICKET], [Printed], [PrintAgain], [Transmitida], [Fecha], [Tipo], [Nombre], [Domicilio], [Telefono], [Localidad], [Cuit], [RepInsc], [RespNoInsc], [Exento], [ConsumidorFinal], [RespMonotributo], [Contado], [CtaCte], [IdCtaCte], [Cheque], [Dni], [Tarjeta], [Idtargeta], [NumeroTarjeta], [Observaciones], [SubTotal], [Ivas], [Total]) VALUES (7, 1, N'', N'', 0, 0, 0, CAST(0x0000A80F01266240 AS DateTime), N'B', N'', N'', N'', N'', N'', 0, 0, 1, 0, 0, 1, 0, 0, 0, N'', 0, 0, N'', N'', CAST(250.0000 AS Decimal(18, 4)), 1, CAST(250.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[Facturas] OFF
/****** Object:  Table [dbo].[DetallesRemitos]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesRemitos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdRemito] [bigint] NOT NULL,
	[IdArticulo] [bigint] NOT NULL,
	[Costo] [decimal](18, 4) NOT NULL,
	[CantDEC] [decimal](18, 4) NOT NULL,
	[CantINT] [bigint] NOT NULL,
	[Total] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_DetallesRemitos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesFacturas]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesFacturas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdFactura] [bigint] NOT NULL,
	[IdArticulo] [bigint] NOT NULL,
	[PrecioNeto] [decimal](18, 4) NOT NULL,
	[IVA] [decimal](18, 4) NOT NULL,
	[PrecioCompra] [decimal](18, 4) NOT NULL,
	[PorcentajeGanancia] [decimal](18, 4) NOT NULL,
	[PrecioFinal] [decimal](18, 4) NOT NULL,
	[CantidadINT] [bigint] NOT NULL,
	[CantidadDEC] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_DetallesFacturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DetallesFacturas] ON
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (1, 1, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (2, 2, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (3, 3, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (4, 4, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (5, 5, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (6, 5, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (7, 5, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (8, 5, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (9, 5, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (10, 6, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (11, 6, 2, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (12, 7, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (13, 7, 2, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[DetallesFacturas] ([Id], [IdFactura], [IdArticulo], [PrecioNeto], [IVA], [PrecioCompra], [PorcentajeGanancia], [PrecioFinal], [CantidadINT], [CantidadDEC]) VALUES (14, 7, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(120.0000 AS Decimal(18, 4)), 1, CAST(0.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[DetallesFacturas] OFF
/****** Object:  Table [dbo].[Remitos]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Remitos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[IdProveedor] [bigint] NOT NULL,
	[NroRemito] [varchar](100) NULL,
	[Fecha] [date] NOT NULL,
	[Total] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_Remitos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincia](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (2, N'Buenos Aires-GBA')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (3, N'Capital Federal')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (4, N'Catamarca')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (5, N'Chaco')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (6, N'Chubut')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (7, N'Córdoba')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (8, N'Corrientes')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (9, N'Entre Ríos')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (10, N'Formosa')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (11, N'Jujuy')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (12, N'La Pampa')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (13, N'La Rioja')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (14, N'Mendoza')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (15, N'Misiones')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (16, N'Neuquén')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (17, N'Río Negro')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (18, N'Salta')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (19, N'San Juan')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (20, N'San Luis')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (21, N'Santa Cruz')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (22, N'Santa Fe')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (23, N'Santiago del Estero')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (24, N'Tierra del Fuego')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (25, N'Tucumán')
/****** Object:  Table [dbo].[PrintersKeys]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintersKeys](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Iduser] [bigint] NOT NULL,
	[Printer] [varchar](255) NOT NULL,
	[PrivateKey] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PrintersKeys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PrintersKeys] ON
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (1, 1, N'Hasar', N'111AAA')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (2, 4, N'Hasar', N'AAA')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (3, -1, N'Hasar', N'MULTICORE')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (4, 6, N'Hasar', N'MEMELENGUE')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (5, 7, N'hasar', N'Mimamamemima')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (6, 2, N'Hasar', N'KEY')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (7, 3, N'hasar', N'KEY')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (8, 5, N'hasar', N'keykey')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (9, 8, N'hasar', N'mimamamemima')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (10, 9, N'hasar', N'lastkey')
INSERT [dbo].[PrintersKeys] ([Id], [Iduser], [Printer], [PrivateKey]) VALUES (11, 10, N'hasar', N'encryptedkey')
SET IDENTITY_INSERT [dbo].[PrintersKeys] OFF
/****** Object:  Table [dbo].[PrintConfiguration]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[Puerto] [varchar](6) NOT NULL,
	[Baudios] [bigint] NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PrintConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrintAction]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintAction](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[PrintAction] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PrintAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovimientoClientes]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MovimientoClientes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdCliente] [bigint] NOT NULL,
	[TipoMovimiento] [varchar](3) NOT NULL,
	[Importe] [decimal](18, 4) NOT NULL,
	[IdFactura] [bigint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_MovimientoClientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnidadesMedidas]    Script Date: 11/20/2017 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnidadesMedidas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Simbolo] [varchar](50) NULL,
	[DisplaySimbol] [float] NULL,
	[Decimal] [float] NULL,
 CONSTRAINT [PK_UnidadesMedidas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UnidadesMedidas] ON
INSERT [dbo].[UnidadesMedidas] ([Id], [Nombre], [Simbolo], [DisplaySimbol], [Decimal]) VALUES (1, N'Cantidad', N' ', 0, 0)
INSERT [dbo].[UnidadesMedidas] ([Id], [Nombre], [Simbolo], [DisplaySimbol], [Decimal]) VALUES (2, N'Metros', N'm', 1, 1)
INSERT [dbo].[UnidadesMedidas] ([Id], [Nombre], [Simbolo], [DisplaySimbol], [Decimal]) VALUES (3, N'Kilogramo', N'kg', 1, 1)
SET IDENTITY_INSERT [dbo].[UnidadesMedidas] OFF
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_TipoDocumento] UNIQUE NONCLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (32, 80, N'C U I T')
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (33, 86, N'C U I L')
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (42, 96, N'DNI ')
INSERT [dbo].[TipoDocumento] ([Id], [IdTipoDocumento], [Nombre]) VALUES (43, 99, N'SIN IDENTIFICAR / VENTA GLOBAL DIARIA')
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
/****** Object:  Table [dbo].[Supplier]    Script Date: 11/20/2017 02:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[NombreFantasía] [varchar](255) NOT NULL,
	[País] [bigint] NOT NULL,
	[Provincia] [bigint] NOT NULL,
	[Localidad] [varchar](100) NOT NULL,
	[Domicilio] [varchar](100) NOT NULL,
	[Teléfono1] [varchar](100) NOT NULL,
	[Teléfono2] [varchar](100) NOT NULL,
	[MailContacto] [varchar](50) NOT NULL,
	[MailPedidos] [varchar](50) NOT NULL,
	[IdCategoriaAfip] [bigint] NOT NULL,
	[NroIngresosBrutos] [varchar](50) NOT NULL,
	[IdTipoDocumento] [bigint] NOT NULL,
	[NroDocumento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON
INSERT [dbo].[Supplier] ([Id], [IdUser], [Nombre], [NombreFantasía], [País], [Provincia], [Localidad], [Domicilio], [Teléfono1], [Teléfono2], [MailContacto], [MailPedidos], [IdCategoriaAfip], [NroIngresosBrutos], [IdTipoDocumento], [NroDocumento]) VALUES (1, 1, N'Put', N'el que lee', 1, 1, N'', N'', N'', N'', N'', N'', 0, N'', 0, N'')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[VendedoresYFacturas]    Script Date: 11/20/2017 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendedoresYFacturas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[IdSeller] [bigint] NOT NULL,
	[IdFactura] [bigint] NOT NULL,
 CONSTRAINT [PK_VendedoresYFacturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedores]    Script Date: 11/20/2017 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedores](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[NombreVendedor] [varchar](255) NOT NULL,
	[PorcentajeComision] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_Vendedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserConfiguration]    Script Date: 11/20/2017 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserConfiguration](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUser] [bigint] NOT NULL,
	[NombreNegocio] [varchar](200) NOT NULL,
	[MostrarLogoNegocio] [bit] NOT NULL,
	[FacturaPorDefecto] [varchar](2) NOT NULL,
	[PIN] [varchar](5) NOT NULL,
	[Kiosco] [bit] NOT NULL,
 CONSTRAINT [PK_UserConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserConfiguration] ON
INSERT [dbo].[UserConfiguration] ([Id], [IdUser], [NombreNegocio], [MostrarLogoNegocio], [FacturaPorDefecto], [PIN], [Kiosco]) VALUES (1, 1, N'', 0, N'A', N'', 1)
SET IDENTITY_INSERT [dbo].[UserConfiguration] OFF
/****** Object:  StoredProcedure [dbo].[UpdateVendedor]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateVendedor] (@IdUser bigint, @IdVendedor bigint, @NombreVendedor varchar(255), @Porcentaje decimal(18,4))
as
begin
update Vendedores set NombreVendedor=@NombreVendedor, PorcentajeComision=@Porcentaje where IdUser=@IdUser and Id=@IdVendedor
end
GO
/****** Object:  StoredProcedure [dbo].[UpdatePrintConfigurationByIdUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdatePrintConfigurationByIdUser](@IdUser bigint, @Puerto varchar(6), @Baudios bigint, @Modelo varchar(50))
as
begin
update PrintConfiguration set Puerto=@Puerto, Baudios=@Baudios, Modelo=@Modelo where IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateFacturaTicket]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFacturaTicket] (@UserId bigint, @FacturaID bigint, @ticketId varchar(255))
as
begin
Update Facturas set Printed=1,Transmitida=1,SerialTICKET=@ticketId where Id=@FacturaID and IdUser=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_UserConfiguration]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATE_UserConfiguration](@IdUser bigint, @NombreNegocio varchar(200), @MostrarLogo bit, @FacturaPorDefecto varchar(2), @PIN varchar(5), @Kiosco bit)
as
begin
update UserConfiguration set NombreNegocio=@NombreNegocio, MostrarLogoNegocio=@MostrarLogo, FacturaPorDefecto=@FacturaPorDefecto, PIN=@PIN, Kiosco=@Kiosco where IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[update_Supplier]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[update_Supplier] 
(
@IdUser bigint,
@IdSupplier bigint,
@Nombre varchar(255),
@NombreFantasia varchar(255),
@Pais bigint,
@Provincia bigint,
@Localidad varchar(100),
@Domicilio varchar(100),
@Telefono1 varchar(100),
@Telefono2 varchar(100),
@MailContacto varchar(50),
@MailPedidos varchar(50),
@IdCategoriaAfip bigint,
@NroIngresosBrutos varchar(50),
@IdTipoDocumento bigint,
@NroDocumento varchar(50)
)
as
begin
update Supplier set 
Nombre=@Nombre, 
NombreFantasía=@NombreFantasia, 
País=@Pais,
Provincia=@Provincia,
Localidad=@Localidad,
Domicilio=@Domicilio,
Teléfono1=@Telefono1,
Teléfono2=@Telefono2,
MailContacto=@MailContacto,
MailPedidos=@MailPedidos,
IdCategoriaAfip=@IdCategoriaAfip,
NroIngresosBrutos=@NroIngresosBrutos,
IdTipoDocumento=@IdTipoDocumento,
NroDocumento=@NroDocumento
where Id=@IdSupplier and IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[Update_Cliente]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Cliente] 
(
@IdCliente bigint,
@RazonSocial varchar(150),
@DNICUITCUIL varchar(100),
@Pais varchar(100),
@Provincia varchar(100),
@Localidad varchar(100),
@Domicilio varchar(100),
@Observaciones text,
@TipoIva varchar(100),
@Descuento decimal(18,4),
@Email varchar(100),
@IdUser bigint,
@LimiteDeCredito decimal(18,4),
@Suspendida bit
)
as
begin
	update Clientes set 
	RazonSocial=@RazonSocial, DNI_CUIT_CUIL=@DNICUITCUIL, Pais=@Pais, Provincia=@Provincia, Localidad=@Localidad,
	Domicilio=@Domicilio, Observaciones=@Observaciones, TipoIva=@TipoIva,Descuento=@Descuento,Email=@Email,LimiteDeCredito=@LimiteDeCredito, Suspendida=@Suspendida
	where Id=@IdCliente and IdUser = @IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[update_articlePrice]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[update_articlePrice](@IdUser bigint,@Id bigint, @precioneto decimal(18,4), @iva decimal(18,4),@preciocompra decimal(18,4),@porcentajeganancia decimal(18,4),@preciofinal decimal(18,4))
as
begin
update Articulos set PrecioNeto=@precioneto,IVA=@iva,PrecioCompra=@preciocompra,PorcentajeGanancia=@porcentajeganancia,PrecioFinal=@preciofinal where IdUser=@IdUser and Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[update_ArticleData]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[update_ArticleData] (
@IdArt bigint,
@IdUser bigint,
@IdProvider bigint, 
@CodigoInterno varchar(50), 
@CodigoBarra varchar(50), 
@Descripcion varchar(255), 
@PrecioNeto decimal (18,4),
@IVA decimal (18,4),
@PrecioCompra decimal (18,4),
@PorcentajeGanancia decimal (18,4),
@PrecioFinal decimal (18,4),
@IdUnidad bigint)
as
begin
Update Articulos set 
IdProveedor=@IdProvider, 
CodigoInterno=@CodigoInterno,
CodigoBarra=@CodigoBarra,
Descripcion = @Descripcion,
PrecioNeto = @PrecioNeto,
IVA = @IVA,
PrecioCompra = @PrecioCompra,
PorcentajeGanancia = @PorcentajeGanancia,
PrecioFinal = @PrecioFinal,
IdUnidad = @IdUnidad where IdUser=@IdUser and Id=@IdArt
end
GO
/****** Object:  StoredProcedure [dbo].[update_ArticleCantidad]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[update_ArticleCantidad](@Iduser bigint, @IdProduct bigint, @CantidadINT bigint, @CantidadDEC decimal(18,4), @Decimal bit)
as
begin
if @Decimal=1
begin
update Articulos set 
CantidadDEC=@CantidadDEC where 
IdUser=@Iduser and Id=@IdProduct
end
else
begin
update Articulos set 
CantidadINT=@CantidadINT where 
IdUser=@Iduser and Id=@IdProduct
end
end
GO
/****** Object:  StoredProcedure [dbo].[Serlect_ClienteByID]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Serlect_ClienteByID] (@iduser bigint, @idclient bigint)
as
begin
select * from Clientes where Id=@idclient and IdUser = @iduser
end
GO
/****** Object:  StoredProcedure [dbo].[SELECT_ULTIMAFACTURACREADA]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_ULTIMAFACTURACREADA] (@IdUser bigint)
as
begin
select top 1 * from Facturas where IdUser=@IdUser ORDER BY Id desc
end
GO
/****** Object:  StoredProcedure [dbo].[select_top5productsByName]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_top5productsByName] (@UserId bigint, @Top bigint, @Chain varchar(50) )
as
begin
declare @chaintosearch varchar(50) = @Chain + '%'
select distinct top (@Top) Descripcion from Articulos where Descripcion like @chaintosearch and IdUser=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[select_top5productsByCodigo]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_top5productsByCodigo] (@UserId bigint, @Top bigint, @Chain varchar(50) )
as
begin
declare @chaintosearch varchar(50) = @Chain + '%'
select distinct top (@Top) CodigoInterno from Articulos where CodigoInterno like @chaintosearch and IdUser=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[select_singleUnidades]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[select_singleUnidades](@IdUnidad bigint)
as
begin
select * from UnidadesMedidas where Id=@IdUnidad
end
GO
/****** Object:  StoredProcedure [dbo].[select_SingleSupplier]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[select_SingleSupplier](@IdUser bigint, @IdSupplier bigint)
as
begin
select * from Supplier where Supplier.IdUser=@IdUser and Supplier.Id=@IdSupplier
end
GO
/****** Object:  StoredProcedure [dbo].[select_singlearticlebaseByCodes]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[select_singlearticlebaseByCodes](@IdUser bigint, @CodeArticle varchar(255))
as
begin
select * from Articulos where (CodigoBarra=@CodeArticle OR CodigoInterno=@CodeArticle)  and IdUser = @IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[select_singlearticlebase]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[select_singlearticlebase](@IdUser bigint, @IdArticle bigint)
as
begin
select * from Articulos where Id=@IdArticle and IdUser = @IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[select_singleArticle]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[select_singleArticle](@IdUser bigint, @IdProveedor bigint, @CodigoInterno varchar(50))
as
begin
select * from Articulos where IdUser=@IdUser and IdProveedor=@IdProveedor and LOWER(CodigoInterno)=LOWER(@CodigoInterno)
end
GO
/****** Object:  StoredProcedure [dbo].[select_SearchArticleForSTOCK]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_SearchArticleForSTOCK](@IdUser bigint, @Code varchar(50), @Name varchar(255), @IdProveedor bigint)
as
begin

declare @searchCode as varchar(255)
declare @searchName as varchar(255)
set @searchCode = @Code + '%'
set @searchName = @Name + '%'

IF @IdProveedor=0
begin
	select Articulos.*,
	       Supplier.Nombre as NombreProveedor, 
	       UnidadesMedidas.Nombre as NombreUnidad 
	       from Articulos 
	inner join Supplier on Supplier.Id = Articulos.IdProveedor 
	inner Join UnidadesMedidas on UnidadesMedidas.Id = Articulos.IdUnidad 
	where Articulos.CodigoInterno like @searchCode and 
	Articulos.Descripcion like @searchName and 
	Articulos.IdUser=@IdUser
end
IF @IdProveedor<>0
begin
	select Articulos.*,
	       Supplier.Nombre as NombreProveedor, 
	       UnidadesMedidas.Nombre as NombreUnidad 
	       from Articulos 
	inner join Supplier on Supplier.Id = Articulos.IdProveedor 
	inner Join UnidadesMedidas on UnidadesMedidas.Id = Articulos.IdUnidad 
	where Articulos.CodigoInterno like @searchCode and 
	Articulos.Descripcion like @searchName and 
	Articulos.IdUser=@IdUser and 
	Articulos.IdProveedor=@IdProveedor
end

end
GO
/****** Object:  StoredProcedure [dbo].[SELECT_REMITOSBetweenDates]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_REMITOSBetweenDates] (@IdUser bigint, @FechaDesde varchar(255), @FechaHasta varchar(255))
as
begin
	select * from Remitos where IdUser=@IdUser and (Fecha between @FechaDesde and @FechaHasta) 
end
GO
/****** Object:  StoredProcedure [dbo].[Select_MovimientoCCByIdClient]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Select_MovimientoCCByIdClient](@IdClient bigint)
as
begin
select * from MovimientoClientes where IdCliente=@IdClient order by Fecha asc
end
GO
/****** Object:  StoredProcedure [dbo].[Select_FacturasByIdCliente]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Select_FacturasByIdCliente](@IdCliente bigint)
as
begin
select *  from Facturas where IdCtaCte=@IdCliente
end
GO
/****** Object:  StoredProcedure [dbo].[SELECT_FACTURASBetweenDates]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SELECT_FACTURASBetweenDates] (@IdUser bigint, @FechaDesde varchar(255), @FechaHasta varchar(255), @TipoFactura varchar(5), @Printed bit)
as
begin
	if @TipoFactura='0'
		begin
			select * from Facturas where IdUser=@IdUser and Printed=@Printed and Fecha Between CONVERT(datetime,@FechaDesde,120) and CONVERT(datetime,@FechaHasta,120)
		end
	else
		begin
					select * from Facturas where IdUser=@IdUser and Printed=@Printed and Tipo=@TipoFactura and Fecha Between Convert(datetime,@FechaDesde,120) and CONVERT(datetime,@FechaHasta,120)
		end
end
GO
/****** Object:  StoredProcedure [dbo].[select_allUnidades]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[select_allUnidades]
as
begin
select * from UnidadesMedidas
end
GO
/****** Object:  StoredProcedure [dbo].[select_allTipoDocumento]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[select_allTipoDocumento]
as
begin
select Id,IdTipoDocumento,Nombre from TipoDocumento
end
GO
/****** Object:  StoredProcedure [dbo].[select_allSuppliers]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_allSuppliers](@idUser bigint)
as
begin
SELECT Supplier.Id,Supplier.Nombre,Supplier.NombreFantasía, Supplier.Teléfono1 as 'Telefono', Supplier.MailContacto as 'Mail'
  FROM Supplier WHERE Supplier.IdUser = @idUser
  end
GO
/****** Object:  StoredProcedure [dbo].[select_allSupliersNames]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[select_allSupliersNames](@IdUser bigint)
as
begin
select Supplier.Id, Supplier.Nombre, Supplier.NombreFantasía from Supplier where Supplier.IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[Select_AllRemitos]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllRemitos](@IdUser bigint)
as
begin
select * from Remitos where IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[select_allProvincia]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[select_allProvincia]
as
begin
select Id,Nombre from Provincia
end
GO
/****** Object:  StoredProcedure [dbo].[select_allCategoriaAFIP]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[select_allCategoriaAFIP]
as
begin
select Id,IdCategoriaAFIP,Nombre from CategoriaAFIP
end
GO
/****** Object:  StoredProcedure [dbo].[select_allArticlesByPagingINFO]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_allArticlesByPagingINFO](@Letter varchar(50),@Page bigint, @Limit bigint, @IdUser bigint, @IdSupplier bigint)
as
begin
declare @cadena varchar(50)
declare @pagecount decimal(10,2)
declare @start bigint
declare @end bigint
set @cadena = @Letter + '%'
set @start = ((@Page*@Limit)-@Limit)+1
set @end = @Page*@Limit

IF @IdSupplier=0



begin

set @pagecount = (select COUNT(*) from Articulos where IdUser=@IdUser and Descripcion like @cadena)/@Limit
end

IF @IdSupplier<>0
begin

set @pagecount = (select COUNT(*) from Articulos where IdUser=@IdUser and IdProveedor=@IdSupplier and Descripcion like @cadena)/@Limit
end


select CAST(@pagecount as bigint)+1 as CantidadPaginas

end
GO
/****** Object:  StoredProcedure [dbo].[select_allArticlesByPaging]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[select_allArticlesByPaging](@Letter varchar(50),@Page bigint, @Limit bigint, @IdUser bigint, @IdSupplier bigint)
as
begin
declare @cadena varchar(50)
declare @pagecount decimal(10,2)
declare @start bigint
declare @end bigint
set @cadena = @Letter + '%'
set @start = ((@Page*@Limit)-@Limit)+1
set @end = @Page*@Limit

IF @IdSupplier=0



begin
select * from 
(select ROW_NUMBER() over (order by Descripcion) as RowNumber,* from Articulos where IdUser=@IdUser and Descripcion like @cadena) as RCR where RowNumber between @start and @end 
set @pagecount = (select COUNT(*) from Articulos where IdUser=@IdUser)/@Limit
end

IF @IdSupplier<>0
begin
select * from 
(select ROW_NUMBER() over (order by Descripcion) as RowNumber,* from Articulos where IdUser=@IdUser and IdProveedor=@IdSupplier and Descripcion like @cadena) as RCR where RowNumber between @start and @end and Descripcion like @cadena
set @pagecount = (select COUNT(*) from Articulos where IdUser=@IdUser and IdProveedor=@IdSupplier)/@Limit
end


end
GO
/****** Object:  StoredProcedure [dbo].[SearchArticle]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*posible options codi, codb, desc*/
CREATE Procedure [dbo].[SearchArticle] (@IdUser bigint, @SearchString varchar(255), @SearchBy varchar(10), @Provider bigint=-1)
as
begin
declare @minprov bigint
declare @maxprov bigint
set @minprov = -1
set @maxprov = 100000000
if (@Provider<>-1)
begin
set @minprov = @Provider
set @maxprov = @Provider
end
if (@SearchBy='codi')
begin
select * from Articulos where IdUser=@IdUser and IdProveedor between @minprov and @maxprov and CodigoInterno like @SearchString + '%' 
end
if (@SearchBy='codb')
begin
select * from Articulos where IdUser=@IdUser and IdProveedor between @minprov and @maxprov and CodigoBarra like @SearchString + '%'
end
if (@SearchBy='desc')
begin
select * from Articulos where IdUser=@IdUser and IdProveedor between @minprov and @maxprov and Descripcion like @SearchString + '%'
end
end
GO
/****** Object:  StoredProcedure [dbo].[Search_Cliente_Begin]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Search_Cliente_Begin] (@IdUser bigint,@SearchString varchar(50))
	as
	begin

	declare @beginr bigint
	set @beginr = (Select COUNT(*) from Clientes where RazonSocial Like @SearchString+'%' and IdUser=@IdUser)
	declare @middler bigint
	set @middler = (Select COUNT(*) from Clientes where RazonSocial Like '%'+@SearchString+'%' and IdUser=@IdUser)
	declare @finalr bigint
	set @finalr = (Select COUNT(*) from Clientes where RazonSocial Like '%'+@SearchString and IdUser=@IdUser)

	if (@beginr>0)
	begin
		Select * from Clientes where RazonSocial Like @SearchString+'%' and IdUser=@IdUser
	end
	else if (@middler>0)
	begin
		Select * from Clientes where RazonSocial Like '%'+@SearchString+'%' and IdUser=@IdUser
	end
	else if (@finalr>0)
	begin
		Select * from Clientes where RazonSocial Like '%'+@SearchString and IdUser=@IdUser
	end
	
end
GO
/****** Object:  StoredProcedure [dbo].[InsertUserConfiguration]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUserConfiguration](@IdUser bigint, @NombreNegocio varchar(200), @MostrarLogo bit, @FacturaPorDefecto varchar(2), @PIN varchar(5), @Kiosco bit)
as
begin
insert into UserConfiguration(IdUser,NombreNegocio,MostrarLogoNegocio,FacturaPorDefecto,PIN,Kiosco) values (@IdUser,@NombreNegocio,@MostrarLogo,@FacturaPorDefecto,@PIN,@Kiosco)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertPrintConfiguration]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertPrintConfiguration](@IdUser bigint, @Puerto varchar(6), @Baudios bigint, @Modelo varchar(50))
as
begin
	insert into PrintConfiguration(IdUser, Puerto, Baudios,Modelo) values (@IdUser, @Puerto, @Baudios, @Modelo)
end
GO
/****** Object:  StoredProcedure [dbo].[InsertPrintAction]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPrintAction](@IdUser bigint, @PrintAction varchar(50))
as
begin
insert into PrintAction(IdUser,PrintAction) values (@IdUser,@PrintAction)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Vendedor]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Vendedor] (@IdUser bigint, @NombreVendedor varchar(255), @PorcentajeComision decimal(18,4))
as
begin
	insert into Vendedores(IdUser,NombreVendedor,PorcentajeComision) values (@IdUser,@NombreVendedor,@PorcentajeComision)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_Supplier]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_Supplier](
      @p_IdUser bigint,
      @p_Nombre varchar(255),
      @p_NombreFantasía varchar (255),
      @p_País bigint,
      @p_Provincia bigint,      
      @p_Localidad varchar(100),
      @p_Domicilio varchar(100),
      @p_Teléfono1 varchar(100),
      @p_Teléfono2 varchar(100),
      @p_MailContacto varchar(50),
      @p_MailPedidos varchar(50),
      @p_IdCategoriaAfip bigint,
      @p_NroIngresosBrutos varchar(50),
      @p_IdTipoDocumento bigint,
      @p_NroDocumento varchar(50)
      )
      as
      begin
      insert into Supplier([IdUser]
      ,[Nombre]
      ,[NombreFantasía]
      ,[País]
      ,[Provincia]
      ,[Localidad]
      ,[Domicilio]
      ,[Teléfono1]
      ,[Teléfono2]
      ,[MailContacto]
      ,[MailPedidos]
      ,[IdCategoriaAfip]
      ,[NroIngresosBrutos]
      ,[IdTipoDocumento]
      ,[NroDocumento]) values (
      @p_IdUser,
      @p_Nombre,
      @p_NombreFantasía,
      @p_País,
      @p_Provincia,      
      @p_Localidad,
      @p_Domicilio,
      @p_Teléfono1,
      @p_Teléfono2,
      @p_MailContacto,
      @p_MailPedidos,
      @p_IdCategoriaAfip,
      @p_NroIngresosBrutos,
      @p_IdTipoDocumento,
      @p_NroDocumento)
      select TOP 1 Id from Supplier order by Id DESC
      end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Remito]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Insert_Remito](
@IdUser bigint,
@IdProveedor bigint,
@NroRemito varchar(100),
@Fecha varchar(100),
@Total decimal(18,4))
as
begin
insert into Remitos(IdUser,IdProveedor,NroRemito,Fecha,Total) values(
@IdUser, @IdProveedor,@NroRemito, @Fecha,@Total)
select top 1 Id from Remitos order  by Id desc
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_MovimientoCliente]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_MovimientoCliente](
@IdCliente bigint,
@TipoMovimiento varchar(3),
@Importe decimal(18,4),
@IdFactura bigint,
@Date varchar(100))
as
begin
insert into MovimientoClientes(
IdCliente,
TipoMovimiento,
Importe,
IdFactura,
Fecha
) values(@IdCliente,@TipoMovimiento,@Importe,@IdFactura,convert(datetime,@Date,120))
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_FacturaEnVendedor]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Insert_FacturaEnVendedor](@IdUser bigint, @IdVendedor bigint, @IdFactura bigint)
as
begin
insert VendedoresYFacturas(IdUser,IdSeller,IdFactura) values (@IdUser,@IdVendedor,@IdFactura)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_Factura]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_Factura](
@IdUser bigint,
@SerialAFIP varchar(255),
@SerialTICKET varchar(255),
@Printed bit,
@PrintAgain bit,
@Transmitida bit,
@Fecha datetime,
@Tipo varchar(5),
@Nombre varchar(255),
@Domicilio varchar(255),
@Telefono varchar(255),
@Localidad varchar(255),
@Cuit varchar(255),
@RepInsc bit,
@RespNoInsc bit,
@Exento bit,
@ConsumidorFinal bit,
@RespMonotributo bit,
@Contado bit,
@CtaCte bit,
@IdCtaCte bigint,
@Cheque bit,
@Dni varchar(255),
@Tarjeta bit,
@Idtargeta bigint,
@NumeroTarjeta varchar(50),
@Observaciones text,
@SubTotal decimal(18,4),
@Ivas bit,
@Total decimal(18,4))
as
begin
INSERT INTO Facturas
           (IdUser
           ,SerialAFIP
           ,SerialTICKET
           ,Printed
           ,PrintAgain
           ,Transmitida
           ,Fecha
           ,Tipo
           ,Nombre
           ,Domicilio
           ,Telefono
           ,Localidad
           ,Cuit
           ,RepInsc
           ,RespNoInsc
           ,Exento
           ,ConsumidorFinal
           ,RespMonotributo
           ,Contado
           ,CtaCte
           ,IdCtaCte
           ,Cheque
           ,Dni
           ,Tarjeta
           ,Idtargeta
           ,NumeroTarjeta
           ,Observaciones
           ,SubTotal
           ,Ivas
           ,Total)
     VALUES
           (@IdUser,@SerialAFIP,@SerialTICKET,@Printed,@PrintAgain,@Transmitida,convert(datetime,@Fecha,120),@Tipo,
           @Nombre,@Domicilio,@Telefono,@Localidad,@Cuit,@RepInsc,@RespNoInsc,@Exento,
           @ConsumidorFinal,@RespMonotributo,@Contado,@CtaCte,@IdCtaCte,@Cheque,@Dni,@Tarjeta,
           @Idtargeta,@NumeroTarjeta,@Observaciones,@SubTotal,@Ivas,@Total)
           Select TOP 1 Id from Facturas Order by Id DESC
           
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_DetalleRemito]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Insert_DetalleRemito](
@IdRemito bigint,
@IdArticulo bigint,
@Costo decimal (18,4),
@CantDEC decimal (18,4),
@CantINT bigint,
@Total decimal (18,4))
as
begin
insert into DetallesRemitos(
IdRemito,
IdArticulo,
Costo,
CantDEC,
CantINT,
Total) values 
(@IdRemito,@IdArticulo,@Costo,@CantDEC,@CantINT,@Total)
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_DetallePresupuesto]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Insert_DetallePresupuesto](@IdFactura bigint, @IdArticulo bigint, @PrecioNeto decimal(18,4), @IVA decimal(18,4), @PrecioCompra decimal(18,4), @PorcentajeGanancia decimal (18,4), @PrecioFinal decimal (18,4), @CantidadINT bigint, @CantidadDEC decimal(18,4))
as
begin
insert into DetallesFacturas(
IdFactura, 
IdArticulo, 
PrecioNeto, 
IVA, 
PrecioCompra, 
PorcentajeGanancia, 
PrecioFinal, 
CantidadINT, 
CantidadDEC) values(
@IdFactura,
@IdArticulo,
@PrecioNeto,
@IVA,
@PrecioCompra,
@PorcentajeGanancia,
@PrecioFinal,
@CantidadINT,
@CantidadDEC)
return 1
end
GO
/****** Object:  StoredProcedure [dbo].[Insert_DetalleFactura]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Insert_DetalleFactura](@IdFactura bigint, @IdArticulo bigint, @PrecioNeto decimal(18,4), @IVA decimal(18,4), @PrecioCompra decimal(18,4), @PorcentajeGanancia decimal (18,4), @PrecioFinal decimal (18,4), @CantidadINT bigint, @CantidadDEC decimal(18,4))
as
begin
declare @NuevaCantidadDEC decimal(18,4)
declare @NuevaCantidadINT int
set @NuevaCantidadINT = (select CantidadINT from Articulos where Id=@IdArticulo)
set @NuevaCantidadINT = @NuevaCantidadINT-@CantidadINT
set @NuevaCantidadDEC = (select CantidadDEC from Articulos where Id=@IdArticulo)
set @NuevaCantidadDEC = @NuevaCantidadDEC-@CantidadDEC


insert into DetallesFacturas(
IdFactura, 
IdArticulo, 
PrecioNeto, 
IVA, 
PrecioCompra, 
PorcentajeGanancia, 
PrecioFinal, 
CantidadINT, 
CantidadDEC) values(
@IdFactura,
@IdArticulo,
@PrecioNeto,
@IVA,
@PrecioCompra,
@PorcentajeGanancia,
@PrecioFinal,
@CantidadINT,
@CantidadDEC)
update Articulos set CantidadINT=@NuevaCantidadINT, CantidadDEC=@NuevaCantidadDEC where Id=@IdArticulo
return 1


end
GO
/****** Object:  StoredProcedure [dbo].[Insert_Cliente]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Cliente] 
(
@RazonSocial varchar(150),
@DNICUITCUIL varchar(100),
@Pais varchar(100),
@Provincia varchar(100),
@Localidad varchar(100),
@Domicilio varchar(100),
@Observaciones text,
@TipoIva varchar(100),
@Descuento decimal(18,4),
@Email varchar(100),
@Iduser bigint,
@LimiteDeCredito decimal(18,4),
@Suspendida bit
)
as
begin
declare @Registers bigint
declare @LastRegisterID bigint
Insert into Clientes 
	(RazonSocial, DNI_CUIT_CUIL, Pais, Provincia, Localidad,
	Domicilio, Observaciones, TipoIva,Descuento,Email,IdUser,LimiteDeCredito,Suspendida)
	values (@RazonSocial, @DNICUITCUIL, @Pais, @Provincia, @Localidad, @Domicilio,
	@Observaciones,@TipoIva,@Descuento,@Email,@Iduser,@LimiteDeCredito,@Suspendida)
set @Registers=@@ROWCOUNT
set @LastRegisterID = (select top 1 Id from Clientes where IdUser=@Iduser order by Id desc)
select @Registers as cantregister, @LastRegisterID as Id
	
end
GO
/****** Object:  StoredProcedure [dbo].[insert_Articulo]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insert_Articulo](
@Iduser bigint,
@Idproveedor bigint,
@CodigoInterno varchar (50),
@CodigoBarra varchar (50),
@Descripcion varchar (255),
@PrecioNeto decimal(18,4),
@IVA decimal(18,4),
@PrecioCompra decimal(18,4),
@PorcentajeGanancia decimal(18,4),
@PrecioFinal decimal(18,4),
@IdUnidad bigint)
as
begin 
insert into Articulos(
IdUser,
IdProveedor,
CodigoInterno,
CodigoBarra,
Descripcion,
PrecioNeto,
IVA,
PrecioCompra,
PorcentajeGanancia,
PrecioFinal,
IdUnidad,
CantidadINT,
CantidadDEC) values (
@Iduser ,
@Idproveedor ,
@CodigoInterno ,
@CodigoBarra ,
@Descripcion ,
@PrecioNeto ,
@IVA ,
@PrecioCompra ,
@PorcentajeGanancia ,
@PrecioFinal,
@IdUnidad,
0,
0)

end
GO
/****** Object:  StoredProcedure [dbo].[GetVendedoresByIdUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetVendedoresByIdUser] (@IdUser bigint)
as
begin
select * from Vendedores where IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GetPrintConfigurationByIdUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetPrintConfigurationByIdUser](@IdUser bigint)
as
begin
 select * from PrintConfiguration where IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GetPrintActionByIdUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPrintActionByIdUser](@IdUser bigint)
as
begin
select TOP 1 Id, PrintAction from PrintAction where IdUser = @IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GetKeyUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetKeyUser](@IdUser bigint)
as
begin
select IdUser,PrivateKey  from PrintersKeys Where Iduser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GetIdUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetIdUser](@key varchar(50))
as
begin
select IdUser,PrivateKey  from PrintersKeys Where PrivateKey=@key
end
GO
/****** Object:  StoredProcedure [dbo].[GetFacturasDisponibles]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFacturasDisponibles](@IdUser bigint)
as
begin
select Id from Facturas Where Printed=0 and IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GetFacturaFromId]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFacturaFromId](@IdUser bigint, @IdFactura bigint)
as
begin
select * from Facturas Where IdUser=@IdUser and Id=@IdFactura
end
GO
/****** Object:  StoredProcedure [dbo].[GetDetalleFactura]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetDetalleFactura](@IdFactura bigint, @IdUser bigint)
as
begin

declare @IdUserFactura bigint
set @IdUserFactura = (select IdUser from Facturas where Id=@IdFactura)
if (@IdUserFactura=@IdUser)
begin
select DetallesFacturas.*, Articulos.Descripcion from DetallesFacturas Inner Join Articulos on DetallesFacturas.IdArticulo=Articulos.Id where DetallesFacturas.IdFactura=@IdFactura 
end else select 'null'

end
GO
/****** Object:  StoredProcedure [dbo].[GetAllPrintActionByIdUser]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPrintActionByIdUser](@IdUser bigint)
as
begin
select PrintAction from PrintAction where IdUser = @IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GET_UserConfiguracion]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_UserConfiguracion](@IdUser bigint)
as
begin
select * from UserConfiguration where IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[GET_REMITObyID]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_REMITObyID](@IdRemito bigint, @IdUser bigint)
as
begin
select * from Remitos where IdUser=@IdUser and Id=@IdRemito
end
GO
/****** Object:  StoredProcedure [dbo].[GET_DETALLEdERemitoByIdRemito]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_DETALLEdERemitoByIdRemito](@IdRemito bigint)
as
begin
select * from DetallesRemitos where IdRemito = @IdRemito
end
GO
/****** Object:  StoredProcedure [dbo].[GET_Cliente_By_ID]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GET_Cliente_By_ID](@IdClient bigint, @IdUser bigint)
as
begin
select * from Clientes where Id=@IdClient and IdUser = @IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[DeletePrintActionById]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePrintActionById](@Iduser bigint, @IdAction bigint)
as
begin
delete PrintAction where IdUser=@IdUser and Id=@IdAction
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_Vendedor]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Vendedor] (@IdUser bigint, @IdVendedor bigint)
as
begin
delete Vendedores where IdUser=@IdUser and Id=@IdVendedor
end
GO
/****** Object:  StoredProcedure [dbo].[delete_Supplier]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_Supplier](@IdSupplier bigint, @IdUser bigint)
as
begin
delete Supplier where Id=@IdSupplier and IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[DELETE_FACTURA]    Script Date: 11/20/2017 02:57:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DELETE_FACTURA] (@IdUser bigint, @IdFactura bigint)
as
begin
delete Facturas where Id=@IdFactura and IdUser=@IdUser
end
GO
/****** Object:  StoredProcedure [dbo].[delete_article]    Script Date: 11/20/2017 02:57:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_article] (@idArt bigint, @idUser bigint)
as
begin
delete Articulos where Id=@idArt and IdUser=@idUser
end
GO
/****** Object:  Default [DF_UserConfiguration_Kiosco]    Script Date: 11/20/2017 02:57:07 ******/
ALTER TABLE [dbo].[UserConfiguration] ADD  CONSTRAINT [DF_UserConfiguration_Kiosco]  DEFAULT ((0)) FOR [Kiosco]
GO
