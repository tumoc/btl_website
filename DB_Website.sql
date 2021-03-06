USE [wizard_magazine]
GO
/****** Object:  Table [dbo].[articles]    Script Date: 31/12/2021 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articles](
	[article_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[textbody] [nvarchar](max) NULL,
	[create_time] [datetime] NULL,
	[image] [nvarchar](max) NULL,
	[user_id] [int] NULL,
	[cate_id] [int] NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_articles] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 31/12/2021 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[cate_id] [int] IDENTITY(1,1) NOT NULL,
	[cate_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 31/12/2021 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[cmt_id] [int] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[cmt_cotnent] [nvarchar](max) NULL,
	[create_time] [datetime] NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[cmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 31/12/2021 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 31/12/2021 22:56:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[usename] [nvarchar](max) NULL,
	[email] [nvarchar](256) NULL,
	[password] [nvarchar](max) NULL,
	[full_name] [nvarchar](max) NULL,
	[avatar] [nvarchar](max) NULL,
	[sefl_des] [nvarchar](max) NULL,
	[group_id] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[articles] ON 

INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (1, N'Hội đồng trường', N'<p>DANH S&Aacute;CH TH&Agrave;NH VI&Ecirc;N HỘI ĐỒNGTRƯỜNG</p>

<p style="text-align:center"><strong>TRƯỜNG ĐẠI HỌC C&Ocirc;NG NGHIỆP H&Agrave; NỘI</strong></p>

<p style="text-align:center"><strong>NHIỆM KỲ 2016-2021</strong></p>

<p style="text-align:center">(K&egrave;m theo Quyết định số 3432/QĐ-BCT ng&agrave;y 05 th&aacute;ng 9 năm 2017 của Bộ trưởng Bộ C&ocirc;ng Thương)</p>

<table align="center" border="1" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>TT</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Họ v&agrave; t&ecirc;n</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Chức vụ, cơ quan c&ocirc;ng t&aacute;c</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>01</p>
			</td>
			<td>
			<p>L&ecirc; Hồng Qu&acirc;n</p>
			</td>
			<td>
			<p>Chủ tịch Hội đồng Trường</p>

			<p>Khoa CN &Ocirc; t&ocirc;, Giảng vi&ecirc;n cao cấp, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>02</p>
			</td>
			<td>
			<p>Nguyễn Văn Thiện</p>
			</td>
			<td>
			<p>Thư k&yacute; Hội đồng Trường</p>

			<p>Trưởng ph&ograve;ng Tổ chức H&agrave;nh ch&iacute;nh, Giảng vi&ecirc;n ch&iacute;nh, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>03</p>
			</td>
			<td>
			<p>Phạm Văn Bổng</p>
			</td>
			<td>
			<p>Ph&oacute; BT Đảng ủy, Ph&oacute; Hiệu trưởng, Giảng vi&ecirc;n cao cấp, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>04</p>
			</td>
			<td>
			<p>Phạm Đức Cường</p>
			</td>
			<td>
			<p>Viện trưởng Viện C&ocirc;ng nghệ - HaUI, Giảng vi&ecirc;n cao cấp, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>05</p>
			</td>
			<td>
			<p>L&yacute; Quốc H&ugrave;ng</p>
			</td>
			<td>
			<p>Vụ trưởng, Vụ TCCB, Bộ C&ocirc;ng Thương</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>06</p>
			</td>
			<td>
			<p>Đỗ Hữu H&agrave;o</p>
			</td>
			<td>
			<p>Chủ tịch Tổng Hội Cơ kh&iacute; Việt Nam, nguy&ecirc;n Thứ trưởng Bộ C&ocirc;ng Thương</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>07</p>
			</td>
			<td>
			<p>Phạm Văn Đ&ocirc;ng</p>
			</td>
			<td>
			<p>Chủ tịch C&ocirc;ng đo&agrave;n, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>08</p>
			</td>
			<td>
			<p>Trương Thị Thanh Ho&agrave;i</p>
			</td>
			<td>
			<p>B&iacute; thư Đo&agrave;n thanh ni&ecirc;n, Giảng vi&ecirc;n Khoa Ngoại ngữ, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>09</p>
			</td>
			<td>
			<p>Nguyễn Thị Hồng Nga</p>
			</td>
			<td>
			<p>Ph&oacute; Trưởng khoa, Khoa Kế to&aacute;n Kiểm to&aacute;n, Giảng vi&ecirc;n cao cấp, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10</p>
			</td>
			<td>
			<p>B&ugrave;i Thị Ng&acirc;n</p>
			</td>
			<td>
			<p>Ph&oacute; Hiệu trưởng, Giảng vi&ecirc;n ch&iacute;nh, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>11</p>
			</td>
			<td>
			<p>Trần Đức Qu&yacute;</p>
			</td>
			<td>
			<p>B&iacute; thư Đảng ủy, Hiệu trưởng, Giảng vi&ecirc;n cao cấp, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>12</p>
			</td>
			<td>
			<p>Nguyễn Chỉ S&aacute;ng</p>
			</td>
			<td>
			<p>Viện trưởng, Viện Nghi&ecirc;n cứu Cơ kh&iacute;, Bộ C&ocirc;ng Thương</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>13</p>
			</td>
			<td>
			<p>B&ugrave;i Kim Sơn</p>
			</td>
			<td>
			<p>Gi&aacute;m đốc, C&ocirc;ng ty TNHH MTV cung ứng nh&acirc;n lực HaUI, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>14</p>
			</td>
			<td>
			<p>Kiều Xu&acirc;n Thực</p>
			</td>
			<td>
			<p>Trưởng ph&ograve;ng Đ&agrave;o tạo, Giảng vi&ecirc;n, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>15</p>
			</td>
			<td>
			<p>Nguyễn Anh Tuấn</p>
			</td>
			<td>
			<p>Ph&oacute; Hiệu trưởng, Giảng vi&ecirc;n ch&iacute;nh, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>16</p>
			</td>
			<td>
			<p>Ho&agrave;ng Ngọc Tuệ</p>
			</td>
			<td>
			<p>Trưởng khoa, Khoa Ngoại ngữ, Giảng vi&ecirc;n, Trường ĐH C&ocirc;ng nghiệp H&agrave; Nội</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>17</p>
			</td>
			<td>
			<p>Trần Quốc Toản</p>
			</td>
			<td>
			<p>Chủ tịch HĐQT, Tổng c&ocirc;ng ty M&aacute;y v&agrave; Thiết bị c&ocirc;ng nghiệp, Bộ C&ocirc;ng Thương</p>
			</td>
		</tr>
	</tbody>
</table>
', CAST(N'2021-12-12T13:45:45.083' AS DateTime), N'/App_Dataimages/t73819.jpg', 2, 1, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (2, N'Đảng ủy', N'<p>CƠ CẤU TỔ CHỨC BAN CHẤP H&Agrave;NH ĐẢNG BỘ TRƯỜNG LẦN THỨ VII, NHIỆM KỲ 2020 - 2025</p>

<p><em><strong>- Ban Thường vụ Đảng uỷ trường:</strong></em></p>

<table border="1" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td>
			<p><strong>TT</strong></p>
			</td>
			<td>
			<p><strong>Họ và t&ecirc;n</strong></p>
			</td>
			<td>
			<p><strong>Chức vụ Đảng</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>Tr&acirc;̀n Đức Quý</p>
			</td>
			<td>
			<p>Bí thư Đảng ủy</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>Phạm Văn B&ocirc;̉ng</p>
			</td>
			<td>
			<p>Ph&oacute; B&iacute; thư Đảng uỷ</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p>L&ecirc; Hồng Qu&acirc;n</p>
			</td>
			<td>
			<p>Ph&oacute; B&iacute; thư Đảng ủy</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p>Nguyễn Văn Thiện</p>
			</td>
			<td>
			<p>Ủy vi&ecirc;n Thường vụ</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p>Kiều Xu&acirc;n Thực</p>
			</td>
			<td>
			<p>Ủy vi&ecirc;n Thường vụ</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em><strong>Ban chấp h&agrave;nh Đảng bộ trường:</strong></em></p>

<table border="1" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td>
			<p><strong>TT</strong></p>
			</td>
			<td>
			<p><strong>Họ và t&ecirc;n</strong></p>
			</td>
			<td>
			<p><strong>Chức vụ Đảng, chính quy&ecirc;̀n, đoàn th&ecirc;̉</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>Tr&acirc;̀n Đức Quý</p>
			</td>
			<td>
			<p>Bí thư Đảng ủy, Hi&ecirc;̣u trưởng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>Phạm Văn B&ocirc;̉ng</p>
			</td>
			<td>
			<p>Ph&oacute; B&iacute; thư Đảng uỷ, Ph&oacute; Hiệu trưởng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p>L&ecirc; Hồng Qu&acirc;n</p>
			</td>
			<td>
			<p>Ph&oacute; B&iacute; thư Đảng uỷ, Chủ tịch Hội đồng trường</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p>Kiều Xu&acirc;n Thực</p>
			</td>
			<td>
			<p>B&iacute; thư Chi bộ, Trưởng ph&ograve;ng Đ&agrave;o tạo</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p>Ho&agrave;ng Anh</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Gi&aacute;m đốc TT Đảm bảo chất lượng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>6</p>
			</td>
			<td>
			<p>Phạm Văn Đ&ocirc;ng</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Trưởng ph&ograve;ng Khoa học c&ocirc;ng nghệ, Chủ tịch C&ocirc;ng đo&agrave;n Trường</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>7</p>
			</td>
			<td>
			<p>Nguyễn Văn Thiện</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Trưởng ph&ograve;ng Tổ chức &ndash; H&agrave;nh ch&iacute;nh</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>8</p>
			</td>
			<td>
			<p>Nguyễn Văn Thiện</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Trưởng khoa Cơ kh&iacute;</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9</p>
			</td>
			<td>
			<p>Nguyễn Thị Thu Hương</p>
			</td>
			<td>
			<p>Bí thư Chi bộ, Gi&aacute;m đốc TT Truyền th&ocirc;ng &amp; Quan hệ C&ocirc;ng ch&uacute;ng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10</p>
			</td>
			<td>
			<p>Th&acirc;n Thanh Sơn</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Trưởng khoa Du lịch</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>11</p>
			</td>
			<td>
			<p>Nguyễn Quang Trung</p>
			</td>
			<td>
			<p>Ph&oacute; B&iacute; thư chi bộ, Ph&oacute; Gi&aacute;m đốc C&ocirc;ng ty Letco</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>12</p>
			</td>
			<td>
			<p>Nguyễn Thị Mai Lan</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Trưởng ph&ograve;ng T&agrave;i ch&iacute;nh kế to&aacute;n, Kế to&aacute;n trưởng</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>13</p>
			</td>
			<td>
			<p>Phan Đăng Hưng</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Gi&aacute;m đốc Trung t&acirc;m C&ocirc;ng nghệ th&ocirc;ng tin</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>14</p>
			</td>
			<td>
			<p>Nguyễn Thị Hồng Nga</p>
			</td>
			<td>
			<p>Ph&oacute; B&iacute; thư Chi bộ, Ph&oacute; Trưởng khoa Kế to&aacute;n - Kiểm to&aacute;n</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>15</p>
			</td>
			<td>
			<p>Trần Ngọc Kh&aacute;nh</p>
			</td>
			<td>
			<p>B&iacute; thư chi bộ, Trưởng ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n</p>
			</td>
		</tr>
	</tbody>
</table>
', CAST(N'2021-12-12T13:46:50.400' AS DateTime), N'/App_Dataimages/t73819.jpg', 1, 1, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (3, N'Ban giám hiệu', N'<p>BAN GI&Aacute;M HIỆU</p>

<hr />
<p style="text-align:center"><strong>Hiệu trưởng: NGND. PGS.TS. Trần Đức Qu&yacute;</strong></p>

<p style="text-align:center"><strong><img alt="" src="/App_Dataimages/Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20NGND_%20PGS_TS_%20Tr%E1%BA%A7n%20%C4%90%E1%BB%A9c%20Qu%C3%BD.jpg" style="height:227px; width:160px" /></strong></p>

<p>- L&atilde;nh đạo, quản l&yacute; to&agrave;n diện c&aacute;c mặt c&ocirc;ng t&aacute;c của trường theo chức năng, nhiệm vụ, quyền hạn được giao.</p>

<p>- Trực tiếp phụ tr&aacute;ch c&aacute;c mặt c&ocirc;ng t&aacute;c: H&agrave;nh ch&iacute;nh đối ngoại, ph&aacute;p chế, tổ chức nh&acirc;n sự, t&agrave;i ch&iacute;nh, t&agrave;i sản, đầu tư x&acirc;y dựng, thi đua khen thưởng, kỷ luật vi&ecirc;n chức v&agrave; người lao động, bồi dưỡng đội ngũ, hoạt động truyền th&ocirc;ng v&agrave; k&yacute; kết c&aacute;c hợp đồng kinh tế.</p>

<p>- X&acirc;y dựng chiến lược, quy hoạch ph&aacute;t triển trường.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c khoa học c&ocirc;ng nghệ, Tạp ch&iacute; Khoa học C&ocirc;ng nghệ, xuất bản.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c ph&aacute;t triển ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin trong nh&agrave; trường.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c tuyển sinh.</p>

<p>- L&agrave;m chủ tịch c&aacute;c hội đồng.</p>

<p>- Chủ t&agrave;i khoản nh&agrave; trường.</p>

<p>- Trực tiếp phụ tr&aacute;ch c&aacute;c đơn vị: Ph&ograve;ng Tổ chức H&agrave;nh ch&iacute;nh, Ph&ograve;ng T&agrave;i ch&iacute;nh Kế to&aacute;n, Ph&ograve;ng Khoa học c&ocirc;ng nghệ, Khoa C&ocirc;ng nghệ &ocirc; t&ocirc;, Khoa Cơ kh&iacute;, Trung t&acirc;m Gi&aacute;o dục Quốc ph&ograve;ng v&agrave; An ninh, Trung t&acirc;m Truyền th&ocirc;ng v&agrave; Quan hệ c&ocirc;ng ch&uacute;ng, Trung t&acirc;m C&ocirc;ng nghệ th&ocirc;ng tin, C&ocirc;ng ty Letco.</p>

<p>Sinh hoạt tại ph&ograve;ng T&agrave;i ch&iacute;nh Kế to&aacute;n.</p>

<hr />
<p style="text-align:center"><strong>Ph&oacute; Hiệu trưởng: PGS.TS. Phạm Văn Bổng</strong></p>

<p style="text-align:center"><img alt="" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20PGS_TS_%20Ph%E1%BA%A1m%20V%C4%83n%20B%E1%BB%95ng.jpg" style="height:217px; width:160px" /></p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c đ&agrave;o tạo.</p>

<p>- Phụ tr&aacute;ch một số c&ocirc;ng việc về tuyển sinh.</p>

<p>- Phụ tr&aacute;ch một số c&ocirc;ng t&aacute;c về khoa học c&ocirc;ng nghệ.</p>

<p>- Phụ tr&aacute;ch li&ecirc;n kết đ&agrave;o tạo trong nước, đ&agrave;o tạo vừa l&agrave;m vừa học.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c học sinh-sinh vi&ecirc;n; c&ocirc;ng t&aacute;c thi học sinh giỏi.</p>

<p>- Phụ tr&aacute;ch quỹ khuyến học Nguyễn Thanh B&igrave;nh.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c thực h&agrave;nh, thực tập v&agrave; an to&agrave;n lao động.</p>

<p>- K&yacute; kết c&aacute;c hợp đồng đ&agrave;o tạo, thực tập, x&acirc;y dựng chương tr&igrave;nh,&hellip; theo uỷ quyền của Hiệu trưởng.</p>

<p>- Trực tiếp phụ tr&aacute;ch c&aacute;c đơn vị: Ph&ograve;ng Đ&agrave;o tạo, Ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n, Khoa Điện, Khoa C&ocirc;ng nghệ th&ocirc;ng tin, Khoa C&ocirc;ng nghệ Ho&aacute;, Khoa C&ocirc;ng nghệ may v&agrave; Thiết kế thời trang, Trung t&acirc;m Đ&agrave;o tạo Sau đại học, Trung t&acirc;m Đ&agrave;o tạo thường xuy&ecirc;n, Trung t&acirc;m Đảm bảo chất lượng, Viện C&ocirc;ng nghệ - HaUI.</p>

<p>- Đảm nhiệm c&aacute;c nhiệm vụ kh&aacute;c khi được Hiệu trưởng ph&acirc;n c&ocirc;ng.</p>

<p>Sinh hoạt tại trung t&acirc;m Đ&agrave;o tạo Sau đại học.</p>

<hr />
<p style="text-align:center"><strong>Ph&oacute; Hiệu trưởng: TS. B&ugrave;i Thị Ng&acirc;n</strong></p>

<p style="text-align:center"><img alt="BAN GIÁM HIỆU" src="/App_Dataimages/ph%C3%B3%20hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng-TS_%20B%C3%B9i%20Th%E1%BB%8B%20Ng%C3%A2n.jpg" style="height:207px; width:160px" /></p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c Hợp t&aacute;c quốc tế.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c khảo th&iacute; v&agrave; đảm bảo chất lượng.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c li&ecirc;n kết đ&agrave;o tạo với nước ngo&agrave;i.</p>

<p>- Phụ tr&aacute;ch dự &aacute;n JICA; C&ocirc;ng t&aacute;c hợp t&aacute;c doanh nghiệp v&agrave; đ&aacute;nh gi&aacute; kỹ năng nghề.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c bồi dưỡng v&agrave; thi gi&aacute;o vi&ecirc;n dạy giỏi.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c thanh tra gi&aacute;o dục.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c văn ho&aacute;, văn nghệ, thể thao, y tế.</p>

<p>- K&yacute; kết c&aacute;c hợp đồng về Hợp t&aacute;c quốc tế, đ&agrave;o tạo bồi dưỡng gi&aacute;o vi&ecirc;n, dịch vụ,...theo uỷ quyền của Hiệu trưởng.</p>

<p>- Trực tiếp phụ tr&aacute;ch c&aacute;c đơn vị: Ph&ograve;ng Thanh tra gi&aacute;o dục, Khoa Du lịch, Khoa Ngoại ngữ, Khoa L&yacute; luận ch&iacute;nh trị - Ph&aacute;p luật, Trung t&acirc;m Hợp t&aacute;c quốc tế, Trung t&acirc;m Khảo th&iacute;, Trung t&acirc;m Việt - Nhật, Trung t&acirc;m Gi&aacute;o dục thể chất v&agrave; Thể thao, Trung t&acirc;m Hợp t&aacute;c doanh nghiệp, Trạm Y tế.</p>

<p>- Đảm nhiệm c&aacute;c nhiệm vụ kh&aacute;c khi được Hiệu trưởng ph&acirc;n c&ocirc;ng.</p>

<p>Sinh hoạt tại Khoa Ngoại ngữ.</p>

<hr />
<p style="text-align:center"><strong>Ph&oacute; Hiệu trưởng: TS. Nguyễn Anh Tuấn</strong></p>

<p style="text-align:center"><img alt="BAN GIÁM HIỆU" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20TS_%20Nguy%E1%BB%85n%20Anh%20Tu%E1%BA%A5n.jpg" style="height:226px; width:152px" /></p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c h&agrave;nh ch&iacute;nh, quản trị.</p>

<p>- Phụ tr&aacute;ch một số c&ocirc;ng việc về đầu tư x&acirc;y dựng.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c thu nộp học ph&iacute;.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c an ninh trật tự, tự vệ.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c ph&aacute;t triển c&aacute;c hoạt động dịch vụ.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c ph&ograve;ng chống ch&aacute;y nổ, ph&ograve;ng chống lụt b&atilde;o, bảo hộ lao động, vệ sinh c&ocirc;ng nghiệp, c&ocirc;ng t&aacute;c 5S.</p>

<p>- Phụ tr&aacute;ch c&ocirc;ng t&aacute;c cơ sở đ&agrave;o tạo H&agrave; Nam.</p>

<p>- K&yacute; kết c&aacute;c hợp đồng dịch vụ, h&agrave;nh ch&iacute;nh,...theo uỷ quyền của Hiệu trưởng.</p>

<p>- Trực tiếp phụ tr&aacute;ch c&aacute;c đơn vị: Ph&ograve;ng Quản trị, Khoa Điện tử, Khoa Quản l&yacute; kinh doanh, Khoa Kế to&aacute;n Kiểm to&aacute;n, Khoa Khoa học cơ bản, Trung t&acirc;m Cơ kh&iacute;, Trung t&acirc;m C&ocirc;ng nghệ &ocirc; t&ocirc; v&agrave; Đ&agrave;o tạo l&aacute;i xe, Trung t&acirc;m Th&ocirc;ng tin-Thư viện, Trung t&acirc;m Quản l&yacute; K&yacute; t&uacute;c x&aacute;, Trung t&acirc;m Đ&agrave;o tạo kỹ thuật HaUI-Foxconn.</p>

<p>- Đảm nhiệm c&aacute;c nhiệm vụ kh&aacute;c khi được Hiệu trưởng ph&acirc;n c&ocirc;ng.</p>

<p>Sinh hoạt tại Ph&ograve;ng Quản trị.</p>

<hr />
<p style="text-align:center"><strong>Ph&oacute; Hiệu trưởng: TS. Kiều Xu&acirc;n Thực</strong></p>

<p style="text-align:center"><strong><img alt="" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20TS_%20Ki%E1%BB%81u%20Xu%C3%A2n%20Th%E1%BB%B1c.jpg" style="height:270px; width:180px" /></strong></p>

<hr />
<p style="text-align:center"><strong>Ph&oacute; Hiệu trưởng: TS. Nguyễn Văn Thiện</strong></p>

<p style="text-align:center"><strong><img alt="" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20TS_%20Nguy%E1%BB%85n%20V%C4%83n%20Thi%E1%BB%87n.jpg" style="height:262px; width:180px" /></strong></p>
', CAST(N'2021-12-12T13:57:52.490' AS DateTime), N'/App_Dataimages/t73819.jpg', 3, 1, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (4, N'Phòng tổ chức hành chính', N'<p>Ph&ograve;ng Tổ chức H&agrave;nh Ch&iacute;nh</p>

<p><strong>I. Qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển</strong></p>

<p>Ph&ograve;ng Tổ chức H&agrave;nh ch&iacute;nh được th&agrave;nh lập ng&agrave;y 10/8/1898 (c&ugrave;ng với Trường Chuy&ecirc;n nghiệp H&agrave; Nội, tiền th&acirc;n của Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội).</p>

<p>Qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của ph&ograve;ng Tổ chức H&agrave;nh ch&iacute;nh gắn liền với 122 năm truyền thống x&acirc;y dựng v&agrave; ph&aacute;t triển của Nh&agrave; trường.</p>

<p><strong>II. Chức năng, nhiệm vụ</strong></p>

<p><strong>* Chức năng</strong></p>

<p>- Tham mưu, gi&uacute;p Hiệu trưởng quản l&yacute;, tổng hợp, đề xuất &yacute; kiến, tổ chức thực hiện mảng c&ocirc;ng t&aacute;c tổ chức, c&aacute;n bộ, bảo vệ ch&iacute;nh trị nội bộ;</p>

<p>- Chế độ, ch&iacute;nh s&aacute;ch đối với c&ocirc;ng chức, vi&ecirc;n chức, người lao động;</p>

<p>- C&ocirc;ng t&aacute;c h&agrave;nh ch&iacute;nh - tổng hợp, văn thư, lưu trữ, thi đua khen thưởng, b&aacute;o ch&iacute;, tuy&ecirc;n truyền, lễ t&acirc;n, kh&aacute;nh tiết v&agrave; c&ocirc;ng t&aacute;c ph&aacute;p chế của nh&agrave; trường.</p>

<p><strong>* Nhi&ecirc;̣m vụ</strong></p>

<p>- C&ocirc;ng t&aacute;c tổ chức, nh&acirc;n sự</p>

<p>- C&ocirc;ng t&aacute;c chế độ ch&iacute;nh s&aacute;ch</p>

<p>- C&ocirc;ng t&aacute;c thi đua, khen thưởng, kỷ luật vi&ecirc;n chức v&agrave; người lao động</p>

<p>- C&ocirc;ng t&aacute;c ph&aacute;p chế</p>

<p>- C&ocirc;ng t&aacute;c Văn thư - Lưu trữ, Lễ t&acirc;n - Kh&aacute;nh tiết</p>

<p>- C&ocirc;ng t&aacute;c H&agrave;nh ch&iacute;nh tổng hợp</p>

<p>- C&ocirc;ng t&aacute;c bảo đảm An ninh trật tự</p>

<p><strong>III. Nh&acirc;n sự</strong></p>

<p><strong>* Ban l&atilde;nh đạo</strong></p>

<p style="text-align:center"><img alt="Phòng Tổ chức Hành Chính" src="/App_Dataimages/Tr%C6%B0%E1%BB%9Fng%20ph%C3%B2ng%20TS_%20Nguy%E1%BB%85n%20V%C4%83n%20Thi%E1%BB%87n.jpg" style="height:135px; width:106px" /></p>

<p style="text-align:center"><strong>Trưởng ph&ograve;ng: TS. Nguyễn Văn Thiện</strong></p>

<p style="text-align:center"><strong><img alt="Phòng Tổ chức Hành Chính" src="/App_Dataimages/Pho%CC%81%20Tr%C6%B0%C6%A1%CC%89ng%20pho%CC%80ng%20ThS_Nguy%E1%BB%85n%20L%C6%B0%C6%A1ng%20Th%C3%A0nh.jpg" style="height:152px; width:105px" /></strong></p>

<p style="text-align:center"><strong>Phó Trưởng phòng: ThS.Nguyễn Lương Th&agrave;nh</strong></p>

<p><strong>* Các b&ocirc;̣ ph&acirc;̣n thuộc Ph&ograve;ng</strong></p>

<p>- Tổ Nghiệp vụ Tổ chức v&agrave; Tiền lương;</p>

<p>- Tổ Nghiệp vụ Tổng hợp v&agrave; Ph&aacute;p chế;</p>

<p>- Tổ Văn thư, Lưu trữ v&agrave; Lễ t&acirc;n;</p>

<p>- Tổ An ninh trật tự v&agrave; L&aacute;i xe</p>

<p><strong>IV. Thi đua Khen thưởng</strong></p>

<p>- 02 Hu&acirc;n chương Lao động hạng Ba (01 cho tập thể, 01 cho c&aacute; nh&acirc;n)</p>

<p>- 01 Bằng khen của Thủ tướng Ch&iacute;nh phủ</p>

<p>- 02 Bằng khen Bộ C&ocirc;ng Thương</p>

<p>- Bằng khen C&ocirc;ng đo&agrave;n C&ocirc;ng Thương Việt Nam v&agrave; Tổng Li&ecirc;n đo&agrave;n lao động Việt Nam.</p>

<p>- Li&ecirc;n tục nhiều năm liền đạt danh hiệu tập thể lao động xuất sắc. Nhiều c&aacute; nh&acirc;n được tặng bằng khen của c&aacute;c Bộ, Ng&agrave;nh.</p>

<p><strong>V. Địa chỉ li&ecirc;n hệ</strong></p>

<p>Tầng 1, nh&agrave; A1, cơ sở 1 (khu A), Số 298- Đường Cầu Diễn, Quận Bắc Từ Li&ecirc;m,TP H&agrave; Nội.</p>

<p>Tầng 1, nh&agrave; C18, cơ sở 3 (khu C), Phường L&ecirc; Hồng Phong, TP Phủ L&yacute;, Tỉnh H&agrave; Nam</p>

<p>Email:&nbsp;<a href="mailto:phongtchct@haui.edu.vn">phongtchc@haui.edu.vn</a></p>
', CAST(N'2021-12-12T14:03:44.090' AS DateTime), N'/App_Dataimages/t73819.jpg', 2, 2, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (5, N'Phòng đào tạo', N'<h1>Ph&ograve;ng Đ&agrave;o tạo</h1>

<p><strong>I. Qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển</strong></p>

<p>Sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của Ph&ograve;ng Đ&agrave;o tạo gắn liền với th&agrave;nh t&iacute;ch 119 năm x&acirc;y dựng v&agrave; ph&aacute;t triển Nh&agrave; trường về số lượng c&aacute;n bộ, vi&ecirc;n chức, về quy m&ocirc; đ&agrave;o tạo v&agrave; uy t&iacute;n.</p>

<p><strong>II. Chức năng, nhiệm vụ</strong></p>

<p><strong>* Chức năng</strong></p>

<p>- Tham mưu gi&uacute;p Hiệu trưởng trong việc quản l&yacute;, tổng hợp, đề xuất &yacute; kiến, tổ chức thực hiện và quản lý đào tạo trong Nhà trường.</p>

<p><strong>* Nhiệm vụ</strong></p>

<p>- Tham mưu hoạch định chi&ecirc;́n lược phát tri&ecirc;̉n đào tạo;</p>

<p>- Ph&ocirc;́i hợp với các đơn vị quản lý đào tạo trong Trường nghi&ecirc;n cứu và đ&ecirc;̀ xu&acirc;́t với Hi&ecirc;̣u trưởng và lãnh đạo Nhà trường v&ecirc;̀ các mục ti&ecirc;u và định hướng phát tri&ecirc;̉n các chương trình đào tạo và các ngu&ocirc;̀n lực phục vụ đào tạo;</p>

<p>- T&ocirc;̉ chức x&acirc;y dựng và thực hi&ecirc;̣n các chương trình đào tạo chính quy, kh&ocirc;ng chính quy;</p>

<p>- Tham mưu và giúp Hi&ecirc;̣u trưởng x&acirc;y dựng chỉ ti&ecirc;u, k&ecirc;́ hoạch và t&ocirc;̉ chức tuy&ecirc;̉n sinh đại học, cao đẳng theo quy định của B&ocirc;̣ Giáo dục và Đào tạo, B&ocirc;̣ Lao đ&ocirc;̣ng - Thương binh và Xã h&ocirc;̣i.</p>

<p>- X&acirc;y dựng k&ecirc;́ hoạch năm học, thời khóa bi&ecirc;̉u cho các lớp học;</p>

<p>- Tham mưu và giúp vi&ecirc;̣c Hi&ecirc;̣u trưởng x&acirc;y dựng và t&ocirc;̉ chức thực hi&ecirc;̣n các quy ch&ecirc;́ hoạt đ&ocirc;̣ng, các thủ tục quy trình quản lý thu&ocirc;̣c lĩnh vực giáo dục và đào tạo;</p>

<p><strong>III. Nh&acirc;n sự</strong></p>

<p><strong>* Ban l&atilde;nh đạo</strong></p>

<p><img alt="Phòng Đào tạo" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20TS_%20Ki%E1%BB%81u%20Xu%C3%A2n%20Th%E1%BB%B1c.jpg" style="height:270px; width:180px" /></p>

<p><strong>Trưởng ph&ograve;ng: TS. Kiều Xu&acirc;n Thực</strong></p>

<p><img alt="Phòng Đào tạo" src="/App_Dataimages/Ph%C3%B3%20tr%C6%B0%E1%BB%9Fng%20Ph%C3%B2ng%20TS_%20L%C3%AA%20V%C4%83n%20Th%C3%A1i.jpg" style="height:250px; width:166px" /><br />
<br />
<strong>Ph&oacute; trưởng Ph&ograve;ng: TS. L&ecirc; Văn Th&aacute;i</strong></p>

<p><img alt="Phòng Đào tạo" src="/App_Dataimages/Ph%C3%B3%20tr%C6%B0%E1%BB%9Fng%20Ph%C3%B2ng%20TS_%20Ph%E1%BA%A1m%20V%C4%83n%20Thoan.jpg" style="height:250px; width:166px" /></p>

<p><strong>Ph&oacute; trưởng Ph&ograve;ng: TS. Phạm Văn Thoan</strong></p>

<p><br />
<strong>IV. Những th&agrave;nh t&iacute;ch nổi bật</strong></p>

<p>- Đội ngũ c&aacute;n bộ, nh&acirc;n vi&ecirc;n của Ph&ograve;ng c&oacute; tinh thần tr&aacute;ch nhiệm cao, năng lực chuy&ecirc;n m&ocirc;n vững v&agrave;ng, nhiệt t&igrave;nh trong c&ocirc;ng t&aacute;c, lu&ocirc;n ho&agrave;n th&agrave;nh tốt nhiệm vụ.</p>

<p>- Nhiều năm đạt danh hiệu đơn vị lao động xuất sắc v&agrave; được tặng thưởng nhiều giấy khen, bằng khen của Bộ Trưởng Bộ C&ocirc;ng nghiệp, của C&ocirc;ng Đo&agrave;n ng&agrave;nh C&ocirc;ng nghiệp Việt Nam, của Tổng Li&ecirc;n đo&agrave;n Lao động Việt Nam.</p>

<p>Phần thưởng cao qu&yacute; bao gồm: 01 Hu&acirc;n chương Lao Động Hạng 3. 01 Bằng khen của Tổng Li&ecirc;n đo&agrave;n Lao động Việt Nam. 02 Bằng khen của C&ocirc;ng đo&agrave;n ng&agrave;nh C&ocirc;ng nghiệp Việt Nam. 01 Bằng khen của Bộ Trưởng Bộ C&ocirc;ng nghiệp.</p>

<p><strong>V. Địa chỉ li&ecirc;n hệ</strong></p>

<p><strong><em>Văn ph&ograve;ng tuyển sinh &ndash; Học vụ,</em></strong>&nbsp;ph&ograve;ng 110, tầng 1, nh&agrave; A2, cơ sở 1, số 298 đường Cầu Diễn, quận Bắc Từ Li&ecirc;m, th&agrave;nh phố H&agrave; Nội. Điện thoại: 024 37655121 số m&aacute;y lẻ 277.</p>
', CAST(N'2021-12-12T14:08:36.940' AS DateTime), N'/App_Dataimages/t73819.jpg', 1, 2, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (6, N'Lịch sử', N'<p>C&Aacute;C MỐC LỊCH SỬ</p>

<hr />
<p>Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội c&oacute; bề d&agrave;y lịch sử hơn 120 năm x&acirc;y dựng v&agrave; ph&aacute;t triển, tiền th&acirc;n l&agrave; hai trường: Trường Chuy&ecirc;n nghiệp H&agrave; Nội (th&agrave;nh lập năm 1898) v&agrave; Trường Chuy&ecirc;n nghiệp Hải Ph&ograve;ng (th&agrave;nh lập năm 1913). Qua nhiều lần s&aacute;p nhập, đổi t&ecirc;n, n&acirc;ng cấp từ trường Trung học C&ocirc;ng nghiệp I l&ecirc;n Trường Cao đẳng C&ocirc;ng nghiệp H&agrave; Nội v&agrave; Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội. Trải qua hơn 120 năm, ở giai đoạn n&agrave;o, Trường cũng lu&ocirc;n được đ&aacute;nh gi&aacute; l&agrave; c&aacute;i n&ocirc;i đ&agrave;o tạo c&aacute;n bộ kỹ thuật, c&aacute;n bộ kinh tế h&agrave;ng đầu của cả nước, nhiều cựu học sinh của Trường đ&atilde; trở th&agrave;nh l&atilde;nh đạo cấp cao của Đảng, Nh&agrave; nước đ&atilde; đi v&agrave;o lịch sử như: Ho&agrave;ng Quốc Việt, Nguyễn Thanh B&igrave;nh, Phạm Hồng Th&aacute;i, Lương Kh&aacute;nh Thiện...; nhiều cựu học sinh, sinh vi&ecirc;n trở th&agrave;nh c&aacute;c c&aacute;n bộ n&ograve;ng cốt, nắm giữ c&aacute;c cương vị trọng tr&aacute;ch của Đảng, Nh&agrave; nước, c&aacute;c Bộ, Ban, Ng&agrave;nh Trung Ương v&agrave; địa phương.</p>

<h1><img alt="" src="/App_Dataimages/ls1.jpg" style="height:1200px; width:547px" /></h1>

<p><strong><em>Sơ lược lịch sử Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội</em></strong></p>

<p>C&aacute;c thế hệ c&aacute;n bộ, giảng vi&ecirc;n v&agrave; học vi&ecirc;n, sinh vi&ecirc;n nh&agrave; trường lu&ocirc;n tự h&agrave;o v&agrave; vinh dự được B&aacute;c Hồ 4 lần về thăm trường. Lời căn dặn của B&aacute;c l&agrave; &quot;kim chỉ nam&quot; để c&aacute;c thế hệ c&aacute;n bộ, giảng vi&ecirc;n, học vi&ecirc;n, học sinh, sinh vi&ecirc;n Nh&agrave; trường nỗ lực, phấn đấu, x&acirc;y dựng Đại học C&ocirc;ng nghiệp H&agrave; Nội kh&ocirc;ng ngừng ph&aacute;t triển, trở th&agrave;nh một trong những trường đại học kỹ thuật h&agrave;ng đầu của Việt Nam, đ&agrave;o tạo theo định hướng c&ocirc;ng nghệ ứng dụng.</p>

<p><img alt="" src="/App_Dataimages/ls2.jpg" style="height:953px; width:900px" /></p>

<p><em>B&aacute;c căn dặn &ldquo;C&aacute;c ch&aacute;u cần ra sức học tập để sau n&agrave;y phục vụ đắc lực c&ocirc;ng cuộc x&acirc;y dựng kinh tế nước nh&agrave;. V&igrave; trong việc x&acirc;y dựng kinh tế hiện đang cần nhiều c&aacute;n bộ kỹ thuật&rdquo;.</em></p>

<p><img alt="" src="/App_Dataimages/ls3.jpg" style="height:592px; width:900px" /></p>
', CAST(N'2021-12-12T19:13:42.990' AS DateTime), N'/App_Dataimages/t73819.jpg', 1, 3, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (7, N'Chiến lược phát triển', N'<p>Chiến lược ph&aacute;t triển</p>

<hr />
<p dir="ltr"><strong>SỨ MẠNG</strong></p>

<blockquote>
<p dir="ltr">Đ&agrave;o tạo nh&acirc;n lực chất lượng cao; s&aacute;ng tạo v&agrave; chuyển giao tri thức, c&ocirc;ng nghệ tới x&atilde; hội v&agrave; cộng đồng đ&aacute;p ứng y&ecirc;u cầu thời kỳ c&aacute;ch mạng c&ocirc;ng nghiệp, phục vụ x&atilde; hội v&agrave; đất nước.</p>
</blockquote>

<p dir="ltr"><strong>TẦM NH&Igrave;N</strong></p>

<blockquote>
<p dir="ltr">Trở th&agrave;nh đại học đ&agrave;o tạo, nghi&ecirc;n cứu khoa học ứng dụng đa năng, ph&aacute;t triển theo m&ocirc; h&igrave;nh đại học th&ocirc;ng minh; đạt chuẩn quốc tế trong một số lĩnh vực then chốt; l&agrave; sự lựa chọn h&agrave;ng đầu của người học, cộng đồng v&agrave; doanh nghiệp.</p>
</blockquote>

<p dir="ltr"><strong>GI&Aacute; TRỊ CỐT L&Otilde;I</strong></p>

<blockquote>
<p dir="ltr">1. Kỹ nghệ l&agrave; nền tảng: Kết hợp truyền thống của trường kỹ nghệ đầu ti&ecirc;n tại Việt Nam v&agrave; kỹ thuật, c&ocirc;ng nghệ hiện đại l&agrave; nền tảng x&acirc;y dựng v&agrave; ph&aacute;t triển.</p>

<p dir="ltr">2. Ki&ecirc;n định với mục ti&ecirc;u: Ki&ecirc;n định trong x&aacute;c định v&agrave; triển khai thực hiện c&aacute;c hoạt động nhằm đạt mục ti&ecirc;u.</p>

<p dir="ltr">3. Kết nối tạo sức mạnh: Đo&agrave;n kết nội bộ, gắn kết đối t&aacute;c tạo n&ecirc;n sức mạnh của nh&agrave; trường.</p>

<p dir="ltr">4. Kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m: Hướng thị trường, đặt lợi &iacute;ch v&agrave; sự h&agrave;i l&ograve;ng của người học, kh&aacute;ch h&agrave;ng v&agrave; c&aacute;c b&ecirc;n quan t&acirc;m l&agrave; trung t&acirc;m c&aacute;c hoạt động.</p>

<p dir="ltr">5. Kh&aacute;c biệt từ s&aacute;ng tạo: Tạo ra sự kh&aacute;c biệt để đột ph&aacute; nhờ sự s&aacute;ng tạo.</p>
</blockquote>

<p dir="ltr"><strong>MỤC TI&Ecirc;U</strong></p>

<blockquote>
<p dir="ltr">Mục ti&ecirc;u chung</p>

<p dir="ltr">Trở th&agrave;nh đại học khoa học ứng dụng h&agrave;ng đầu Việt Nam, theo m&ocirc; h&igrave;nh tự chủ to&agrave;n diện, đi đầu trong xu thế chuyển đổi số v&agrave; quản trị th&ocirc;ng minh;</p>

<p dir="ltr">Sản phẩm gi&aacute;o dục đ&agrave;o tạo nằm trong top đầu Việt Nam về khả năng đ&aacute;p ứng y&ecirc;u cầu của thị trường lao động, được ghi nhận về năng lực s&aacute;ng tạo v&agrave; khởi nghiệp;</p>

<p dir="ltr">Sản phẩm khoa học c&ocirc;ng nghệ được c&ocirc;ng nhận v&agrave; ứng dụng rộng r&atilde;i trong nước, một số lĩnh vực đạt tầm khu vực v&agrave; quốc tế.</p>
</blockquote>

<p dir="ltr"><strong>TRIẾT L&Yacute; GI&Aacute;O DỤC</strong></p>

<blockquote>
<p dir="ltr">Gi&aacute;o dục to&agrave;n diện, v&igrave; sự ph&aacute;t triển bền vững v&agrave; hội nhập.</p>
</blockquote>
', CAST(N'2021-12-12T19:15:54.340' AS DateTime), N'/App_Dataimages/t73819.jpg', 2, 3, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (8, N'Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 - 2021 của Bộ Công Thương', N'<p>Chiều ng&agrave;y 9/12, tại Hội nghị tổng kết c&ocirc;ng t&aacute;c đ&agrave;o tạo, bồi dưỡng năm học 2020 - 2021 của Bộ C&ocirc;ng Thương, Đại học C&ocirc;ng nghiệp H&agrave; Nội vinh dự đ&oacute;n nhận Cờ thi đua Đơn vị xuất sắc trong phong tr&agrave;o thi đua dạy tốt, học tốt năm học 2020 - 2021.</p>

<p><em><img alt="Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 – 2021 của Bộ Công Thương" src="https://www.haui.edu.vn//media/82/t82849.jpg" />To&agrave;n cảnh Hội nghị</em></p>

<p><em><img alt="Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 – 2021 của Bộ Công Thương" src="https://www.haui.edu.vn//media/82/t82850.jpg" />NGND.PGS.TS. Trần Đức Qu&yacute; - Hiệu trưởng nh&agrave; trường c&oacute; b&agrave;i ph&aacute;t biểu về kinh nghiệm x&acirc;y dựng v&agrave; chia sẻ học liệu điện tử giữa c&aacute;c trường đại học.</em></p>

<p><em><img alt="Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 – 2021 của Bộ Công Thương" src="https://www.haui.edu.vn//media/82/t82852.jpg" />NGND.PGS.TS.Trần Đức Qu&yacute; chia sẻ về ng&agrave;nh học Logistic v&agrave; quản l&yacute; chuỗi cung ứng của Đại học C&ocirc;ng nghiệp H&agrave; Nội. Thầy Hiệu trưởng nhấn mạnh: Chương tr&igrave;nh đ&agrave;o tạo ng&agrave;nh học n&agrave;y cũng được x&acirc;y dựng theo chuẩn quốc tế CDIO, với đội ngũ giảng vi&ecirc;n gi&agrave;u kinh nghiệm sẽ g&oacute;p phần giải b&agrave;i to&aacute;n nh&acirc;n sự đang thiếu cả về số lượng v&agrave; chất lượng cho ng&agrave;nh Logistics v&agrave; đ&aacute;p ứng nhu cầu thực tiễn của c&aacute;c doanh nghiệp.</em></p>

<p><em><img alt="Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 – 2021 của Bộ Công Thương" src="https://www.haui.edu.vn//media/82/t82853.jpg" />PGS.TS.L&ecirc; Hồng Qu&acirc;n - Chủ tịch Hội đồng trường đại diện ĐHCNHN nhận Cờ thi đua Đơn vị xuất sắc trong phong tr&agrave;o thi đua dạy tốt, học tốt năm học 2020 - 202</em>1</p>

<p><em><img alt="Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 – 2021 của Bộ Công Thương" src="https://www.haui.edu.vn//media/82/t82854.jpg" />PGS.TS. Phạm Văn Đ&ocirc;ng - Trưởng ph&ograve;ng Khoa học C&ocirc;ng nghệ, Trường ĐHCNHN được Nh&agrave; nước phong tặng danh hiệu Nh&agrave; gi&aacute;o ưu t&uacute;</em></p>

<p><em><img alt="Đại học Công nghiệp Hà Nội nhận Cờ thi đua xuất sắc tại Hội nghị tổng kết công tác đào tạo năm học 2020 – 2021 của Bộ Công Thương" src="https://www.haui.edu.vn//media/82/t82855.jpg" />Đại diện L&atilde;nh đạo Nh&agrave; trường dự Hội nghị</em></p>

<p>Ch&uacute;c Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội v&agrave; c&aacute;c trường thuộc Bộ C&ocirc;ng Thương ho&agrave;n th&agrave;nh xuất sắc nhiệm vụ năm học 2021 - 2022.<br />
Năm học mới, th&agrave;nh c&ocirc;ng mới !</p>

<ul>
	<li>&nbsp;</li>
</ul>
', CAST(N'2021-12-12T19:18:42.357' AS DateTime), N'/App_Dataimages/tin1.jpg', 2, 4, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (9, N'Đại học Công nghiệp Hà Nội chào đón các diễn giả tham gia Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 (ICRMAT 2021)', N'<p>Hội thảo khoa học quốc tế ICRMAT 2021 (International Conference on Research in Management and Technovation ICRMAT 21) sẽ diễn ra tại Đại học C&ocirc;ng nghiệp H&agrave; Nội v&agrave;o ng&agrave;y 10-11/12/2021. Khoa Quản l&yacute; Kinh doanh v&agrave; Khoa Kế to&aacute;n Kiểm to&aacute;n được Nh&agrave; trường giao nhiệm vụ chủ tr&igrave; v&agrave; chịu tr&aacute;ch nhiệm về nội dung của hội thảo.</p>

<p>Do điều kiện dịch Covid 19 diễn biến phức tạp n&ecirc;n ICRMAT 21 được tổ chức theo h&igrave;nh thức kết hợp trực tiếp v&agrave; trực tuyến. Hội thảo đ&atilde; thu h&uacute;t 96 b&aacute;o c&aacute;o khoa học từ c&aacute;c nh&agrave; nghi&ecirc;n cứu, học giả đến từ nhiều trường đại học v&agrave; viện nghi&ecirc;n cứu trong cả nước, cũng như từ c&aacute;c quốc gia kh&aacute;c tr&ecirc;n thế giới như Ba Lan, Trung Quốc, Ấn Độ, Phillippines, Malaysia, Việt Nam&hellip;54 b&aacute;o c&aacute;o được lựa chọn để tr&igrave;nh b&agrave;y tại hội thảo chia th&agrave;nh 6 ph&acirc;n ban chuy&ecirc;n m&ocirc;n sẽ hứa hẹn một buổi hội thảo th&agrave;nh c&ocirc;ng, c&oacute; t&iacute;nh thời sự to&agrave;n cầu.</p>

<p>C&aacute;c b&aacute;o c&aacute;o được chấp nhận đăng sẽ được xuất bản to&agrave;n văn tr&ecirc;n tạp ch&iacute; Annals of Computer Science and Information Systems, Poland (ISSN: 2300-5963). Đặc biệt, c&aacute;c b&agrave;i c&oacute; chất lượng cao sẽ được lựa chọn đăng tr&ecirc;n tạp ch&iacute; La Revista Ingenier&iacute;a Solidaria (ISSN: 1900-3102/ eISSN: 2357-6014) thuộc danh mục ISI.<br />
Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội hy vọng hội thảo sẽ thu h&uacute;t được sự quan t&acirc;m của đ&ocirc;ng đảo c&aacute;c nh&agrave; khoa học trong nước v&agrave; quốc tế; đồng thời l&agrave; cơ hội lớn để quảng b&aacute; h&igrave;nh ảnh đất nước, tr&iacute; tuệ, con người Việt Nam v&agrave; h&igrave;nh ảnh trường Đại học C&ocirc;ng nghiệp H&agrave; Nội đến với bạn b&egrave; quốc tế.</p>

<p>Phi&ecirc;n khai mạc v&agrave; c&aacute;c ph&acirc;n ban diễn ra như sau:</p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Room 1</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Room 2</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Room 3</strong></p>
			</td>
		</tr>
		<tr>
			<td colspan="4">
			<p><strong>Friday, 10<sup>th</sup>&nbsp;December 2021</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>8:00-8:30</p>
			</td>
			<td colspan="3">
			<p>Registration</p>

			<p>Room 1 - Floor 4 &ndash; A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 513 564 6862</p>

			<p>Password: 122021</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>8:30-9:00</p>
			</td>
			<td colspan="3">
			<p>Opening Ceremony</p>

			<p>Room 1 - Floor 4 &ndash; A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 513 564 6862</p>

			<p>Password: 122021</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9:00-9:05</p>
			</td>
			<td colspan="3">
			<p>Transfer of rights to organize ICRMAT Conference 2022</p>

			<p>Room 1 - Floor 4 &ndash; A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 513 564 6862</p>

			<p>Password: 122021</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9:05-9:25</p>
			</td>
			<td colspan="3">
			<p>Keynote Speech 1: Dr. Monika Eisenbardt</p>

			<p>Department of Business Informatics and International Accounting</p>

			<p>University of Economics, Poland</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9:25- 9:45</p>
			</td>
			<td colspan="3">
			<p>Keynote Speech 2: Dr. Trung Thanh Le - Asso. Prof</p>

			<p>Graduate School, National Economics University, Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9:45-10:05</p>
			</td>
			<td colspan="3">
			<p>Keynote Speech 3: Mr. Sharath Martin</p>

			<p>ACCA&rsquo;s Regional Consultant</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10:05-10:20</p>
			</td>
			<td colspan="3">
			<p>Coffee break</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10:20-12:00</p>
			</td>
			<td>
			<p>Session 1</p>

			<p>Room 1 - Floor 4 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 513 564 6862</p>

			<p>Password: 122021</p>
			</td>
			<td>
			<p>Session 2</p>

			<p>Room 1 - Floor 6 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 943 5068 3535</p>

			<p>Password: 247763</p>
			</td>
			<td>
			<p>Session 3</p>

			<p>Room 1 - Floor 12 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 997 3468 9605</p>

			<p>Password: 259866</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>12:00-13:30</p>
			</td>
			<td colspan="3">
			<p>Lunch break</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>13:30-13:50</p>
			</td>
			<td colspan="3">
			<p>Keynote Speech 4: Dr. Le Thai Phong</p>

			<p>Faculty of Business Administration,</p>

			<p>Foreign Trade University, Hanoi, Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>13:50-14:10</p>
			</td>
			<td colspan="3">
			<p>Keynote Speech 4: Dr. Shivani Agarwal</p>

			<p>KIET School of Management, India</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>14:10-14:35</p>
			</td>
			<td colspan="3">
			<p>Keynote Speech 6: Dr. Anurika Vaish - Asso. Prof</p>

			<p>Department of Management Studies, Indian Institute of Information Technology &ndash; Allahabad, Prayagraj, India</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>14:35-14:50</p>
			</td>
			<td colspan="3">
			<p>Coffee break</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>14:50-16:30</p>
			</td>
			<td>
			<p>Session 4</p>

			<p>Room 1 - Floor 4 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 513 564 6862</p>

			<p>Password: 122021</p>
			</td>
			<td>
			<p>Session 5</p>

			<p>Room 1 - Floor 6 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 943 5068 3535</p>

			<p>Password: 247763</p>
			</td>
			<td>
			<p>Session 6</p>

			<p>Room 1 - Floor 12 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 997 3468 9605</p>

			<p>Password: 259866</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>16:30-16:40</p>
			</td>
			<td colspan="3">
			<p>Thank you to the scientists who moderated the session</p>
			</td>
		</tr>
		<tr>
			<td colspan="4">
			<p><strong>Saturday, 11<sup>th</sup>&nbsp;December 2021</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>8h30-10h00</p>
			</td>
			<td>
			<p>Postal 1</p>

			<p>Room 1 - Floor 4 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 513 564 6862</p>

			<p>Password: 122021</p>
			</td>
			<td colspan="2">
			<p>Postal 2</p>

			<p>Room 1 - Floor 6 - A1 building &ndash; Hanoi University of Industry</p>

			<p>Zoom ID: 943 5068 3535</p>

			<p>Password: 247763</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10:00</p>
			</td>
			<td colspan="3">
			<p>Closing the conference</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Keynote Speechs (code keynote)<br />
Session chair: Asso. Prof. Dr. Trung Thanh Le, National Economics University, Vietnam</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>keynote01</p>
			</td>
			<td>
			<p>9:05-9:25</p>
			</td>
			<td>
			<p>Dr. Monika Eisenbardt</p>
			</td>
			<td>
			<p>Issues worth considering in consumer knowledge management</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>keynote02</p>
			</td>
			<td>
			<p>9:25- 9:45</p>
			</td>
			<td>
			<p>Dr. Trung Thanh Le -Asso. Prof</p>
			</td>
			<td>
			<p>Capacity and performance of the intermediaries in vietnam&rsquo;s science and technology market</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p>keynote03</p>
			</td>
			<td>
			<p>9:45-10:05</p>
			</td>
			<td>
			<p>Mr. Sharath Martin</p>
			</td>
			<td>
			<p>The evolving role of CFOs in Decisive Decade for Climate Action</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Human resource management, Production management, Marketing (Session 1)<br />
Session chair: Asso. Prof. Dr. Trung Thanh Le<br />
Room 1 - Floor 4 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 513 564 6862 Password: 122021</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>89</strong></p>
			</td>
			<td>
			<p>10:20 &ndash; 10:40</p>
			</td>
			<td>
			<p>Quang Van Ngo, Trinh Ngoc Luan, Chung Xuan &ndash; Thi Nguyen</p>
			</td>
			<td>
			<p>Fostering employee loyalty: role of empowerment leadership, trust, commitment and satisfaction</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>10</strong></p>
			</td>
			<td>
			<p>10:40-11:00</p>
			</td>
			<td>
			<p>Puja Roshani</p>
			</td>
			<td>
			<p>A study on factors affecting males of buying cosmetic products in Ghaziabad</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>15</strong></p>
			</td>
			<td>
			<p>11:00 &ndash; 11:20</p>
			</td>
			<td>
			<p>Sarika Malhota and Shivani Agarwal</p>
			</td>
			<td>
			<p>Role of Leadership and Human Resource Development in the time of crisis management</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>62</strong></p>
			</td>
			<td>
			<p>11:20 - 11:40</p>
			</td>
			<td>
			<p>Phuong Anh Nguyen Thi, Huy Thong Vu and Manh Cuong Nguyen</p>
			</td>
			<td>
			<p>Factors at point of sale affecting impulse buying of ready-made clothes: Study of young female groups in Hanoi and Ho Chi Minh</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>12</strong></p>
			</td>
			<td>
			<p>11:40-12:00</p>
			</td>
			<td>
			<p>Richa Sharma</p>
			</td>
			<td>
			<p>The good, the bad, the ugly &amp; the futile: the memory &amp; their impact on human beings</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Accounting (Session 2)<br />
Session chair: Assoc. Prof. Dr Nguyen Thi Hong Nga and Dr. Vu Thi Thanh Binh<br />
Room 2 - Floor 6 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 943 5068 3535 Password: 247763</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>30</strong></p>
			</td>
			<td>
			<p>10:20 &ndash; 10:40</p>
			</td>
			<td>
			<p>Dang Ngoc Hung and Vu Thi Thanh Binh</p>
			</td>
			<td>
			<p>Data mining for bankruptcy prediction: An experiment in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>79</strong></p>
			</td>
			<td>
			<p>10:40-11:00</p>
			</td>
			<td>
			<p>Huynh Xuan Hiep, Nguyen Dong Phuong, Nguyen Chi Cong, Hoang Dinh Dung</p>
			</td>
			<td>
			<p>Factors affecting the organization of accounting work in manufacturing enterprises located in vsip1 industrial park in binh duong province</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>34</strong></p>
			</td>
			<td>
			<p>11:00 &ndash; 11:20</p>
			</td>
			<td>
			<p>Do Duc Tai, Nguyen Thi Xuan Hong and Tran Manh Dung</p>
			</td>
			<td>
			<p>Operating cash flow in commercial firms listed on the hochiminh stock exchange</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>31</strong></p>
			</td>
			<td>
			<p>11:20 - 11:40</p>
			</td>
			<td>
			<p>Van Vu Thi Thuy, Hung Dang Ngoc and Thuy Do Thi Thu</p>
			</td>
			<td>
			<p>The impact of corporate governance on the earnings quality of enterprises listed on the stock market in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>58</strong></p>
			</td>
			<td>
			<p>11:40-12:00</p>
			</td>
			<td>
			<p>Le Thi Ngoc Mai, Nguyen Thị Dieu</p>
			</td>
			<td>
			<p>Completing accounting to develop cooperative economic in vietnam in the digital economic era</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Business administration and economics in the context of Covid-19 (Session 3)<br />
Session chair: Ms Kumud Sharma<br />
Room 3 - Floor 12 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 997 3468 9605 Password: 259866</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>59</strong></p>
			</td>
			<td>
			<p>10:20 &ndash; 10:40</p>
			</td>
			<td>
			<p>Anh H. Le and Trang M. Nguyen</p>
			</td>
			<td>
			<p>The influence of work-from-home on job performance during covid-19 pandemic: empirical evidence in hanoi, vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>47</strong></p>
			</td>
			<td>
			<p>10:40-11:00</p>
			</td>
			<td>
			<p>Shikha Garg</p>
			</td>
			<td>
			<p>An Investigation into Movement of Advertising Expenditure Of India In The Backdrop Of Covid-19</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>23</strong></p>
			</td>
			<td>
			<p>11:00 &ndash; 11:20</p>
			</td>
			<td>
			<p>Nguyen Trong Hien Ton</p>
			</td>
			<td>
			<p>Optimizing Search Results Using Taguchi Design of Experiments: Case Study of the Distribution of COVID-19 Names in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>56</strong></p>
			</td>
			<td>
			<p>11:20 - 11:40</p>
			</td>
			<td>
			<p>Anh Phuong Tran and Duc Thuy Le</p>
			</td>
			<td>
			<p>Preserving human resource of vietnamese enterprise in covid-19 pandemic</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>21</strong></p>
			</td>
			<td>
			<p>11:40-12:00</p>
			</td>
			<td>
			<p>Ngoc Minh Do, Dung Thi Nguyen and Tuan The Tran</p>
			</td>
			<td>
			<p>The impact of COVID-19 pandemic on logistics firms in Vietnam</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Keynote Talks (code keynote)<br />
Session chair: Dr Le Thai Phong, Foreign Trade University, Hanoi, Vietnam</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>keynote04</p>
			</td>
			<td>
			<p>13:30-13:45</p>
			</td>
			<td>
			<p>Dr. Le Thai Phong</p>
			</td>
			<td>
			<p>The impacts of celebrity endorsement on university students&rsquo; purchase intention in hanoi during covid-19 period: a study in vietnamese fmcg industry</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>keynote05</p>
			</td>
			<td>
			<p>13:50-14:10</p>
			</td>
			<td>
			<p>Dr. Shivani Agarwal</p>
			</td>
			<td>
			<p>The relationship between SWB and Social Engagement: A role FOMO</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p>keynote06</p>
			</td>
			<td>
			<p>14:10-14:35</p>
			</td>
			<td>
			<p>Dr. Anurika Vaish - Asso. Prof</p>
			</td>
			<td>
			<p>Framework for Sustainable teaching pedagogy to combat challenges in the e-learning environment</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Business administration, economics, tourism - hotel (Session 4)<br />
Session chair: Dr Le Thai Phong<br />
Room 2 - Floor 6 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 513 564 6862 Password: 122021</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>5</strong></p>
			</td>
			<td>
			<p>14:50-15:10</p>
			</td>
			<td>
			<p>Dr. Bhavani Shree A and Umamaheswararao Gobbilla</p>
			</td>
			<td>
			<p>A Study on Examining the Divers of Customer Satisfaction in the Hospitality Industry: Using Kano Model</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>93</strong></p>
			</td>
			<td>
			<p>15:50-16:10</p>
			</td>
			<td>
			<p>Do Thanh Tu, Duong Thi Thu Huyen</p>
			</td>
			<td>
			<p>Management of Human Resources in Education</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>37</strong></p>
			</td>
			<td>
			<p>15:30-15:50</p>
			</td>
			<td>
			<p>Hong Liem Pham, Nguyen Xuan Lan</p>
			</td>
			<td>
			<p>Creating Innovation in Hospitality Industry: The Role of Brand Supporting Behaviour</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>50</strong></p>
			</td>
			<td>
			<p>15:10-15:30</p>
			</td>
			<td>
			<p>Do Hai Hung and Nguyen Manh Cuong</p>
			</td>
			<td>
			<p>The role of management capacity for the sustainable development of small and medium enterprises in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>24</strong></p>
			</td>
			<td>
			<p>16:10-16:30</p>
			</td>
			<td>
			<p>Kim Thoa Bui Thi</p>
			</td>
			<td>
			<p>Occupational safety and health in garment enterprises in vietnam - the corporate social responsibility to employees</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Finance - Banking (Session 5)<br />
Session chair: Assoc. Prof. Dr Dang Ngoc Hung and Assoc. Prof. Dr Tran Manh Dung<br />
Room 2 - Floor 6 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 943 5068 3535 Password: 247763</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>32</strong></p>
			</td>
			<td>
			<p>14:50-15:10</p>
			</td>
			<td>
			<p>Loan Lai Thi Thanh, Van Vu Thi Thuy and Ha Hoang Thi Viet</p>
			</td>
			<td>
			<p>Determinants of banking liquidity in Vietnamese commercial banks</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>72</strong></p>
			</td>
			<td>
			<p>15:10-15:30</p>
			</td>
			<td>
			<p>Nguyen Thi Nhung</p>
			</td>
			<td>
			<p>The interactions between exchange rate and stock market index in vietnam: an application of vecm model</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>61</strong></p>
			</td>
			<td>
			<p>15:30-15:50</p>
			</td>
			<td>
			<p>Thi Thu Loan Bui and Phuong Anh Ngoc Nguyen</p>
			</td>
			<td>
			<p>Studying the mediating role of financial leverage in the relationship between entrepreneurship orientation and the performance of SMEs</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>91</strong></p>
			</td>
			<td>
			<p>15:50-16:10</p>
			</td>
			<td>
			<p>Tran Tat Thanh, Nguyen Van Dinh, Nguyen Thi Hai Yen</p>
			</td>
			<td>
			<p>Determinants of Dividend Smoothing: Empiracil evidence from listed firms on Vietnamese stock exchanges</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>87</strong></p>
			</td>
			<td>
			<p>16:10-16:30</p>
			</td>
			<td>
			<p>Nguyen Phuong Anh</p>
			</td>
			<td>
			<p>Assessment of the financial safety of securities companies in Vietnam</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Science and technology (Session 6)<br />
Session chair: Dr Shivani Agarwal<br />
Room 3 - Floor 12 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 997 3468 9605 Password: 259866</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td style="text-align:center"><strong>Code</strong></td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>66</strong></p>
			</td>
			<td>
			<p>14:50-15:10</p>
			</td>
			<td>
			<p>Annie Singla and Rajat Agrawal</p>
			</td>
			<td>
			<p>Comparing the effectiveness of Convolutional Neural Network and Long Short-Term Memory Network for Disaster Based Social Media Messages - Using Thunderstorm and Cyclone as Case Studies</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>51</strong></p>
			</td>
			<td>
			<p>15:10-15:30</p>
			</td>
			<td>
			<p>Vu Dinh Khoa and Nguyễn Thị Mai Anh</p>
			</td>
			<td>
			<p>Investigating the impact of social capital on supply chain resilience and supply chain performance</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>33</strong></p>
			</td>
			<td>
			<p>15:30-15:50</p>
			</td>
			<td>
			<p>Anh Vu and Ha Hoang</p>
			</td>
			<td>
			<p>Impact of training quality on expected training service prices of learners at Vietnamese public universities</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>17</strong></p>
			</td>
			<td>
			<p>15:50-16:10</p>
			</td>
			<td>
			<p>Bui Thi Hoang Truyen; Nguyen Phu Phuong Trang</p>
			</td>
			<td>
			<p>Leadership Styles and Talent Retention From Higher Education Institutions In Viet Nam: Conceptual Framework Paper</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>54</strong></p>
			</td>
			<td>
			<p>16:10-16:30</p>
			</td>
			<td>
			<p>Nga Nguyen Thi Hong, Khoa Vu Dinh and Thanh Nguyen Dac</p>
			</td>
			<td>
			<p>Intention of Vietnamese Enterprises&rsquo;s digital transformation</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Postal 1<br />
Session chair: Dr Nguyen Thi Dieu Linh<br />
Room 1 - Floor 4 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 513 564 6862 Password: 122021</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>9</strong></p>
			</td>
			<td>
			<p>8:30-8:40</p>
			</td>
			<td>
			<p>Nguyen Thi Hong</p>
			</td>
			<td>
			<p>Overview of social media marketing and Starbucks&rsquo; social media marketing strategy</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>16</strong></p>
			</td>
			<td>
			<p>8:40-8:50</p>
			</td>
			<td>
			<p>Vũ Cảnh L&acirc;m</p>
			</td>
			<td>
			<p>Training high quality human resources in science engineering and technology in the revolution industrial for the fourth</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>20</strong></p>
			</td>
			<td>
			<p>8:50-9:00</p>
			</td>
			<td>
			<p>Thi Hien Le</p>
			</td>
			<td>
			<p>Developing high quality human resources of high-tech agricultural enterprises in vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>39</strong></p>
			</td>
			<td>
			<p>9:00-9:10</p>
			</td>
			<td>
			<p>Ho&agrave;ng Thị Hương and Nguyễn Thị Mai Anh</p>
			</td>
			<td>
			<p>Research on the factors affecting the successful implementation of Lean production model in industrial production enterprises in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>52</strong></p>
			</td>
			<td>
			<p>9:10-9:20</p>
			</td>
			<td>
			<p>Quang Ngo Van, Thang Tran Quang and Thuong Luu Cong</p>
			</td>
			<td>
			<p>Corporate social responsibility and employee loyalty: Role of pride and commitment</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>6</p>
			</td>
			<td>
			<p><strong>82</strong></p>
			</td>
			<td>
			<p>9:20-9:30</p>
			</td>
			<td>
			<p>Bui Thi Phuong Hoa, Quang Van Ngo</p>
			</td>
			<td>
			<p>Influence of Critical and Economic Motivations on the Intention to Buy Second Hand Clothes of Vietnamese Consumers</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>7</p>
			</td>
			<td>
			<p><strong>80</strong></p>
			</td>
			<td>
			<p>9:30-9:40</p>
			</td>
			<td>
			<p>Huynh Xuan Hiep, Nguyen Dong Phuong, Nguyen Chi Cong, Dinh Thanh Cung</p>
			</td>
			<td>
			<p>Factors affecting the quality of accounting information in commercial enterprises in Ho Chi Minh City</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>8</p>
			</td>
			<td>
			<p><strong>83</strong></p>
			</td>
			<td>
			<p>9:40-9:50</p>
			</td>
			<td>
			<p>Huyen Pham Thu, Nga Nguyen Thi Hong, Nhung Dao Thi, Hong Nguyen Thi Xuan, Nga Nguyen Thi, Dung Nguyen Thi Kim</p>
			</td>
			<td>
			<p>The impacts of corporate governance on information quality on financial statements</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9</p>
			</td>
			<td>
			<p><strong>90</strong></p>
			</td>
			<td>
			<p>9:50-10:00</p>
			</td>
			<td>
			<p>Anh Thi Lan Nguyen, Linh Van Nguyen and Hang Thanh Truong, Thuy Thi Bui</p>
			</td>
			<td>
			<p>Analysis of some factors affecting business performance from non-financial aspects at enterprises in Nam Dinh province</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10</p>
			</td>
			<td>
			<p><strong>48</strong></p>
			</td>
			<td>
			<p>10:00-10:10</p>
			</td>
			<td>
			<p>Viet Tuan Huy Nguyen, Thi Thu Hien Nguyen, Thi Thanh Hoai To and Thi Tuyet Nguyen</p>
			</td>
			<td>
			<p>The impact level of covid-19 on university students&rsquo; mental health in ha noi, vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>11</p>
			</td>
			<td>
			<p><strong>57</strong></p>
			</td>
			<td>
			<p>10:10-10:20</p>
			</td>
			<td>
			<p>Thu Hien Nguyen, Thi Thuy Nguyen, Huyen Trang Vu and Thanh Cong Ha</p>
			</td>
			<td>
			<p>Application Of Technology In Management And Operation Of Agricultural Products Supply Chain In Vietnam During The Covid-19 Pandemic</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>Postal 2<br />
Session chair: Nguyen Thi Hong Nga<br />
Room 2 - Floor 6 &ndash; A1 building &ndash; Hanoi University of Industry<br />
Zoom ID: 943 5068 3535 Password: 247763</em></p>

<table align="center" border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>No</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Code</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Time</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Authors</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Paper title</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p><strong>44</strong></p>
			</td>
			<td>
			<p>8:30-8:40</p>
			</td>
			<td>
			<p>Thu Huyền Trần Thị</p>
			</td>
			<td>
			<p>Effect of memorable tourism experiences on intention to revisit community-based tourism destination of domestic tourists in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p><strong>53</strong></p>
			</td>
			<td>
			<p>8:40-8:50</p>
			</td>
			<td>
			<p>Thanh Cong Ha and Quy Thuan Bui</p>
			</td>
			<td>
			<p>Impact of the Vietnam &ndash; EAEU FTA on the trade between Vietnam and Eurasian Economic Union</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p><strong>41</strong></p>
			</td>
			<td>
			<p>8:50-9:00</p>
			</td>
			<td>
			<p>Thi Nguyet Dung Nguyen, Thanh Cong Ha, Manh Cuong Nguyen and Thi Thu Loan Bui</p>
			</td>
			<td>
			<p>Impact of Financial Risk on Business Efficiency Listed on The Stock Market in Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>4</p>
			</td>
			<td>
			<p><strong>55</strong></p>
			</td>
			<td>
			<p>9:00-9:10</p>
			</td>
			<td>
			<p>Nguyen Thi Dieu Hien and Nguyen Mai Huong</p>
			</td>
			<td>
			<p>The factors influencing bank credit capital accessibility of enterprises in hanoi in the context of the covid pandemic</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>5</p>
			</td>
			<td>
			<p><strong>65</strong></p>
			</td>
			<td>
			<p>9:10-9:20</p>
			</td>
			<td>
			<p>Loan Bui Thi Thu, Thang Nguyen Xuan and Hieu Ta Quang</p>
			</td>
			<td>
			<p>The determinants of the business performance of commercial banks: A case study of Vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>6</p>
			</td>
			<td>
			<p><strong>40</strong></p>
			</td>
			<td>
			<p>9:20-9:30</p>
			</td>
			<td>
			<p>Anh Nguyen Phuong, Loan Nguyen T. Thanh and Nga Nguyen T. Hong.</p>
			</td>
			<td>
			<p>Using Google translate in teaching and learning activities for English &ndash; medium &ndash; instruction (EMI) subjects</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>7</p>
			</td>
			<td>
			<p><strong>51</strong></p>
			</td>
			<td>
			<p>9:30-9:40</p>
			</td>
			<td>
			<p>Vu Dinh Khoa and Nguyễn Thị Mai Anh</p>
			</td>
			<td>
			<p>Investigating the impact of social capital on supply chain resilience and supply chain performance</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>8</p>
			</td>
			<td>
			<p><strong>84</strong></p>
			</td>
			<td>
			<p>9:40-9:50</p>
			</td>
			<td>
			<p>Phuong Thao Vu</p>
			</td>
			<td>
			<p>Analysing the behavior of students and lecturers in using social networks for academic and educational purposes</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>9</p>
			</td>
			<td>
			<p><strong>8</strong></p>
			</td>
			<td>
			<p>9:50-10:00</p>
			</td>
			<td>
			<p>Thuy Nguyen Thi Thu, Bich-Loan Nguyen and Trung Nguyen Chi</p>
			</td>
			<td>
			<p>Framework of Using Machine Leaning Techniques in Human Resource Management in Vietnamese Companies</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>10</p>
			</td>
			<td>
			<p><strong>59</strong></p>
			</td>
			<td>
			<p>10:00-10:10</p>
			</td>
			<td>
			<p>Anh H. Le and Trang M. Nguyen</p>
			</td>
			<td>
			<p>The influence of work-from-home on job performance during covid-19 pandemic: empirical evidence in hanoi, vietnam</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>11</p>
			</td>
			<td>
			<p><strong>96</strong></p>
			</td>
			<td>
			<p>10:10-10:20</p>
			</td>
			<td>
			<p>Nguyen Thi Minh Tu and Tran Van Hoang</p>
			</td>
			<td>
			<p>Technological capacity of manufacturing enterprises in the North Central: Current Status, Issues and Policy Implication</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>12</p>
			</td>
			<td>
			<p><strong>88</strong></p>
			</td>
			<td>
			<p>10:20-10:30</p>
			</td>
			<td>
			<p>Tran Thi Lan Anh</p>
			</td>
			<td>
			<p>impacts of diversification on operational efficiency of vietnam commercial bank</p>
			</td>
		</tr>
	</tbody>
</table>
', CAST(N'2021-12-12T19:26:55.187' AS DateTime), N'/App_Dataimages/tin2.jpg', 3, 4, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (10, N'Thông báo về việc bổ nhiệm 02 Phó Hiệu trưởng Trường Đại học Công nghiệp Hà Nội', N'<p style="text-align:justify"><span style="font-size:14px"><strong><span style="color:#333333"><span style="font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#f3f4f8">Ng&agrave;y 02/12/2021, Hội đồng trường Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội đ&atilde; Quyết nghị về việc bổ nhiệm 2 Ph&oacute; Hiệu trưởng. Nghị quyết số 27/NQ-HĐT ng&agrave;y 2/12/2021 bổ nhiệm &ocirc;ng Kiều Xu&acirc;n Thực, trưởng Ph&ograve;ng Đ&agrave;o tạo giữ chức Ph&oacute; Hiệu trưởng; Nghị quyết số 28/NQ-HĐT ng&agrave;y 2/12/2021 bổ nhiệm &ocirc;ng Nguyễn Văn Thiện, trưởng Ph&ograve;ng Tổ chức H&agrave;nh ch&iacute;nh, giữ chức Ph&oacute; Hiệu trưởng.</span></span></span></strong></span></p>

<p style="text-align:start"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#f3f4f8">Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội th&ocirc;ng b&aacute;o tới c&aacute;c cơ quan, tổ chức, c&aacute; nh&acirc;n th&ocirc;ng tin về c&ocirc;ng t&aacute;c c&aacute;n bộ của Nh&agrave; trường:</span></span></span></span></p>

<table align="center" border="1" cellspacing="0" class="MsoTableGrid" style="background-color:#f3f4f8; border-collapse:collapse; border-spacing:0px; border:1px solid #dddddd; box-sizing:border-box; color:#333333; font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif; font-size:14px; font-style:normal; font-variant-ligatures:normal; font-weight:400; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal; width:624px">
	<tbody>
		<tr>
			<td style="background-color:#003399; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:top; width:57px">
			<p style="text-align:center"><span style="font-size:14px"><span style="color:#ffffff"><strong>TT</strong></span></span></p>
			</td>
			<td style="background-color:#003399; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:top; width:245px">
			<p style="text-align:center"><span style="font-size:14px"><span style="color:#ffffff"><strong>HỌ V&Agrave; T&Ecirc;N</strong></span></span></p>
			</td>
			<td style="background-color:#003399; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:top; width:323px">
			<p style="text-align:center"><span style="font-size:14px"><span style="color:#ffffff"><strong>CHỨC VỤ</strong></span></span></p>
			</td>
		</tr>
		<tr>
			<td style="background-color:#f3f4f8; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:middle; width:57px">
			<p style="text-align:center"><span style="font-size:14px">1</span></p>
			</td>
			<td style="background-color:#f3f4f8; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:top; width:245px">
			<p style="text-align:center"><span style="font-size:14px"><img alt="Thông báo về việc bổ nhiệm 02 Phó Hiệu trưởng Trường Đại học Công nghiệp Hà Nội" class="oImage" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20TS_%20Ki%E1%BB%81u%20Xu%C3%A2n%20Th%E1%BB%B1c.jpg" style="border:0px; box-sizing:border-box; height:270px; max-width:100%; vertical-align:middle; width:180px" /></span></p>

			<p style="text-align:center"><span style="font-size:14px">TS. Kiều Xu&acirc;n Thực</span></p>
			</td>
			<td style="background-color:#f3f4f8; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:middle; width:323px">
			<p style="text-align:center"><span style="font-size:14px">Ph&oacute; Hiệu trưởng Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội</span></p>
			</td>
		</tr>
		<tr>
			<td style="background-color:#f3f4f8; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:middle; width:57px">
			<p style="text-align:center"><span style="font-size:14px">2</span></p>
			</td>
			<td style="background-color:#f3f4f8; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:top; width:245px">
			<p style="text-align:center"><span style="font-size:14px"><img alt="Thông báo về việc bổ nhiệm 02 Phó Hiệu trưởng Trường Đại học Công nghiệp Hà Nội" class="oImage" src="/App_Dataimages/Ph%C3%B3%20Hi%E1%BB%87u%20tr%C6%B0%E1%BB%9Fng%20TS_%20Nguy%E1%BB%85n%20V%C4%83n%20Thi%E1%BB%87n.jpg" style="border:0px; box-sizing:border-box; height:262px; max-width:100%; vertical-align:middle; width:180px" /></span></p>

			<p style="text-align:center"><span style="font-size:14px">TS. Nguyễn Văn Thiện</span></p>
			</td>
			<td style="background-color:#f3f4f8; border-bottom:1px solid #dddddd; border-left:1px solid #dddddd; border-right:1px solid #dddddd; border-top:1px solid #dddddd; vertical-align:middle; width:323px">
			<p style="text-align:center"><span style="font-size:14px">Ph&oacute; Hiệu trưởng Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội</span></p>
			</td>
		</tr>
	</tbody>
</table>

<p style="text-align:right"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style="background-color:#f3f4f8"><strong>Tr&acirc;n trọng th&ocirc;ng b&aacute;o !</strong></span></span></span></span></p>
', CAST(N'2021-12-12T19:28:37.340' AS DateTime), N'/App_Dataimages/t73819.jpg', 2, 4, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (11, N'Thông báo về phòng, chống dịch bệnh COVID-19 và Kế hoạch đào tạo từ ngày 06/12/2021 đến ngày 19/12/2021', N'<p><em>K&iacute;nh gửi: C&aacute;c c&aacute;n bộ, giảng vi&ecirc;n, học vi&ecirc;n, sinh vi&ecirc;n to&agrave;n trường.</em></p>

<p>Căn cứ t&igrave;nh h&igrave;nh dịch bệnh COVID-19 vẫn đang diễn biến phức tạp v&agrave; Kế hoạch đ&agrave;o tạo năm học 2021 - 2022, Hiệu trưởng - Trưởng Ban chỉ đạo ph&ograve;ng, chống dịch bệnh COVID-19 Đại học C&ocirc;ng nghiệp H&agrave; Nội y&ecirc;u cầu c&aacute;n bộ, giảng vi&ecirc;n, học vi&ecirc;n, sinh vi&ecirc;n to&agrave;n trường thực hiện c&aacute;c nội dung sau:</p>

<p>1. Tiếp tục thực hiện nghi&ecirc;m c&aacute;c quy định của Ch&iacute;nh phủ, của địa phương v&agrave; nh&agrave; trường về c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch COVID-19 (th&ocirc;ng điệp 5K cộng vắc-xin), nhất l&agrave; việc đeo khẩu trang bắt buộc tại nơi c&ocirc;ng cộng.</p>

<p>2. Thực hiện khai b&aacute;o y tế tr&ecirc;n ứng dụng&nbsp;<strong>PC-COVID</strong>&nbsp;hoặc website&nbsp;<a href="https://tokhaiyte.vn/"><em><strong>https://tokhaiyte.vn/</strong></em></a>&nbsp;hoặc bằng m&atilde;<strong>&nbsp;QR code</strong>, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin/khai b&aacute;o trực tiếp với ch&iacute;nh quyền địa phương nơi cư tr&uacute; theo hướng dẫn của Bộ Y tế; tiếp tục khai b&aacute;o y tế tr&ecirc;n hệ thống Đại học điện tử v&agrave; ti&ecirc;m vắc-xin ph&ograve;ng chống COVID-19 theo kế hoạch của nh&agrave; trường.</p>

<p>3. Kh&ocirc;ng tới Trường trong trường hợp đang thuộc diện phải c&aacute;ch ly y tế theo y&ecirc;u cầu của cơ quan y tế. Đối với những người c&oacute; biểu hiện ho, sốt, kh&oacute; thở hoặc c&aacute;c biểu hiện nghi ngờ nhiễm bệnh COVID-19, phải đến ngay c&aacute;c cơ sở Y tế gần nhất để được hướng dẫn v&agrave; xử l&yacute; kịp thời.</p>

<p><strong>4. Kế hoạch đ&agrave;o tạo</strong><br />
<em><strong>4.1. Đối với Đại học c&aacute;c kh&oacute;a</strong></em><br />
- Nh&agrave; trường tiếp tục triển khai dạy học trực tuyến theo thời kh&oacute;a biểu của c&aacute;c lớp học phần được mở trong học kỳ I năm học 2021-2022 (sinh vi&ecirc;n truy cập hệ thống Đại học điện tử để xem th&ocirc;ng tin lớp học tại mục &ldquo;<em><strong>Học trực tuyến&rdquo; đối với c&aacute;c lớp học phần chuyển sang dạy học trực tuyến</strong></em>&nbsp;hoặc tại mục &ldquo;<em><strong>Học kết hợp&rdquo; đối với c&aacute;c học phần tổ chức dạy học kết hợp</strong></em>); C&aacute;c lớp học phần Gi&aacute;o dục thể chất v&agrave; lớp học phần Thực tập/Đồ &aacute;n/B&agrave;i tập lớn: Giảng vi&ecirc;n giao nhiệm vụ học tập c&oacute; hướng dẫn, sinh vi&ecirc;n thực hiện theo hướng dẫn của giảng vi&ecirc;n; Những ca/lớp thực h&agrave;nh/th&iacute; nghiệm kh&ocirc;ng thể triển khai dạy học trực tuyến: Sinh vi&ecirc;n được nghỉ học, c&aacute;c khoa/trung t&acirc;m lập kế hoạch để sinh vi&ecirc;n học b&ugrave; v&agrave; th&ocirc;ng b&aacute;o cụ thể sau.<br />
- Từ ng&agrave;y 13/12/2021: c&aacute;c lớp Đại học - kh&oacute;a 16&nbsp;<em><strong>(CNKT Điện, Du lịch, Quản trị kh&aacute;ch sạn, Quản trị dịch vụ du lịch lữ h&agrave;nh</strong></em>) tạm dừng học Gi&aacute;o dục Quốc ph&ograve;ng - An ninh theo tiến độ đ&agrave;o tạo để sinh vi&ecirc;n học tập c&aacute;c học phần kh&aacute;c theo thời kh&oacute;a biểu học kỳ I (học trực tuyến).<br />
- Sinh vi&ecirc;n chưa thi kết th&uacute;c học kỳ II v&agrave; học kỳ phụ h&egrave; 2020-2021 tiếp tục dự thi kết th&uacute;c học kỳ theo kế hoạch do Trung t&acirc;m Khảo th&iacute; th&ocirc;ng b&aacute;o (nếu c&oacute;).<br />
<em><strong>4.2. Đối với Cao đẳng c&aacute;c kh&oacute;a</strong></em><br />
- Nh&agrave; trường tiếp tục triển khai thực hiện kế hoạch đ&agrave;o tạo học kỳ I năm học 2021-2022 đối với c&aacute;c m&ocirc;n học/m&ocirc; đun c&oacute; thể thực hiện dạy học trực tuyến hoặc dạy học theo h&igrave;nh thức giao nhiệm vụ học tập c&oacute; hướng dẫn (Giảng vi&ecirc;n cập nhật, sinh vi&ecirc;n truy cập hệ thống Đại học điện tử để xem th&ocirc;ng tin lớp học trực tuyến tại mục &ldquo;Học trực tuyến&rdquo;).<br />
- Sinh vi&ecirc;n chưa thi kết th&uacute;c học kỳ II năm học 2020-2021 hoặc đ&atilde; ho&agrave;n th&agrave;nh c&aacute;c m&ocirc;n học/m&ocirc; đun theo thời kh&oacute;a biểu của học kỳ I năm học 2021-2022 dự thi kết th&uacute;c học kỳ theo kế hoạch do Trung t&acirc;m Khảo th&iacute; th&ocirc;ng b&aacute;o (nếu c&oacute;).<br />
<em><strong>4.3. Đối với Đại học VLVH, Cao học c&aacute;c kh&oacute;a</strong></em><br />
Tiếp tục triển khai dạy học trực tuyến hoặc giao b&agrave;i c&oacute; hướng dẫn từ xa.<br />
<em><strong>4.4. Đối với sinh vi&ecirc;n c&aacute;c hệ, kh&oacute;a đang thực tập ngo&agrave;i trường</strong></em><br />
Thực hiện theo kế hoạch v&agrave; hướng dẫn của nơi thực tập v&agrave; nơi cư tr&uacute;; B&aacute;o c&aacute;o kết quả, tiến độ thực tập với giảng vi&ecirc;n hướng dẫn qua email, điện thoại, &hellip;<br />
Đề nghị c&aacute;c đơn vị, CBGV v&agrave; HVSV thực hiện nghi&ecirc;m c&aacute;c nội dung tr&ecirc;n cho đến khi c&oacute; th&ocirc;ng b&aacute;o mới.</p>

<p><strong>Tr&acirc;n trọng th&ocirc;ng b&aacute;o!</strong></p>
', CAST(N'2021-12-12T19:37:52.933' AS DateTime), N'/App_Dataimages/t73819.jpg', 1, 5, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (12, N'Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội', N'<p style="text-align:justify">Ng&agrave;y 10/12/2021, Hội thảo khoa học quốc tế Nghi&ecirc;n cứu về Quản l&yacute; v&agrave; Đổi mới c&ocirc;ng nghệ 2021 (ICRMAT 2021) đ&atilde; ch&iacute;nh thức diễn ra tại Đại học C&ocirc;ng nghiệp H&agrave; Nội.</p>

<p style="text-align:justify">Do dịch COVID-19 diễn biến phức tạp n&ecirc;n ICRMAT 2021 (International Conference on Research in Management and Technovation) được tổ chức theo h&igrave;nh thức kết hợp trực tiếp v&agrave; trực tuyến với sự tham gia của đ&ocirc;ng đảo c&aacute;c nh&agrave; nghi&ecirc;n cứu, học giả đến từ nhiều trường đại học, viện nghi&ecirc;n cứu trong nước v&agrave; nhiều quốc gia tr&ecirc;n thế giới như Ba Lan, Trung Quốc, Ấn Độ, Phillippines, Malaysia.</p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82882.jpg" />To&agrave;n cảnh khai mạc Hội thảo khoa học quốc tế ICRMAT 2021</em></p>

<p style="text-align:justify">Ph&aacute;t biểu tại phi&ecirc;n khai mạc, TS. B&ugrave;i Thị Ng&acirc;n - Ph&oacute; Hiệu trưởng nh&agrave; trường ch&agrave;o đ&oacute;n c&aacute;c chuy&ecirc;n gia, diễn giả, c&aacute;c nh&agrave; nghi&ecirc;n cứu v&agrave; kh&aacute;ch mời đến với Hội thảo. TS. B&ugrave;i Thị Ng&acirc;n nhấn mạnh:&nbsp;<em>&ldquo;Hội thảo đ&atilde; mang đến cơ hội cho c&aacute;c chuy&ecirc;n gia, diễn giả chia sẻ, trao đổi về kinh nghiệm,học thuật, giảng dạy v&agrave; nghi&ecirc;n cứu chuy&ecirc;n s&acirc;u trong lĩnh vực Quản l&yacute;, Kế to&aacute;n, Kiểm to&aacute;n v&agrave; c&aacute;c xu hướng mới, ti&ecirc;n tiến. C&aacute;c vấn đề, lĩnh vực, những đổi mới v&agrave; tiến bộ kh&ocirc;ng chỉ giới hạn trong phạm vi của một quốc gia m&agrave; đ&atilde; c&oacute; sức lan tỏa tr&ecirc;n phạm vi quốc tế. Đại học C&ocirc;ng nghiệp H&agrave; Nội mong muốn giao lưu, trao đổi với c&aacute;c nh&agrave; khoa học s&acirc;u hơn, rộng hơn về c&aacute;c vấn đề mới li&ecirc;n quan đến Quản l&yacute;, Kế to&aacute;n v&agrave; Kiểm to&aacute;n.&rdquo;</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82883.jpg" />TS. B&ugrave;i Thị Ng&acirc;n - Ph&oacute; Hiệu trưởng Nh&agrave; trường ph&aacute;t biểu khai mạc</em></p>

<p style="text-align:justify">Tại Hội thảo lần n&agrave;y, 96 b&aacute;o c&aacute;o khoa học được gửi về cho ban tổ chức, 54 b&aacute;o c&aacute;o được lựa chọn để tr&igrave;nh b&agrave;y tại 6 ph&acirc;n ban chuy&ecirc;n m&ocirc;n. Hội thảo quy tụ những quan điểm, g&oacute;c nh&igrave;n v&agrave; ph&acirc;n t&iacute;ch đa chiều xoay quanh c&aacute;c chủ đề:&nbsp;<em>Quản trị nguồn nh&acirc;n lực; Quản trị Marketing; Kinh doanh quốc tế; T&agrave;i ch&iacute;nh - Ng&acirc;n h&agrave;ng; Logistics &amp; Quản trị chuỗi cung ứng;Tr&aacute;ch nhiệm x&atilde; hội v&agrave; tinh thần doanh nh&acirc;n; Quyết định kinh doanh trong bối cảnh đại dịch COVID 19, C&ocirc;ng nghệ th&ocirc;ng tin trong quản l&yacute; vận h&agrave;nh; Quản l&yacute; trong c&ocirc;ng nghiệp 4.0; Quản l&yacute; hệ sinh th&aacute;i; Kế to&aacute;n - Kiểm to&aacute;n v&agrave; c&aacute;c chủ đề hấp dẫn kh&aacute;c.</em></p>

<p style="text-align:justify">Th&agrave;nh vi&ecirc;n tham dự đ&atilde; c&oacute; những trao đổi s&ocirc;i nổi, t&acirc;m huyết về nội dung khoa học của c&aacute;c b&aacute;o c&aacute;o. Nhiều nghi&ecirc;n cứu được đ&aacute;nh gi&aacute; c&oacute; chất lượng tốt v&agrave; tiếp tục được c&aacute;c t&aacute;c giả ho&agrave;n thiện để đăng tr&ecirc;n c&aacute;c tạp ch&iacute; quốc tế c&oacute; uy t&iacute;n như tạp ch&iacute; Annals of Computer Science and Information Systems, Poland (ISSN: 2300-5963), tạp ch&iacute; La Revista Ingenier&iacute;a Solidaria (ISSN: 1900-3102/ eISSN: 2357-6014) thuộc danh mục ISI.</p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82884.jpg" />Phi&ecirc;n thứ nhất với 11 b&aacute;o c&aacute;o được tr&igrave;nh b&agrave;y như: Đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao về khoa học kỹ thuật v&agrave; c&ocirc;ng nghệ trong cuộc c&aacute;ch mạng c&ocirc;ng nghiệp lần thứ tư; Tổng quan về Tiếp thị Truyền th&ocirc;ng X&atilde; hội v&agrave; Chiến lược Tiếp thị Truyền th&ocirc;ng X&atilde; hội của Starbucks; Ảnh hưởng của c&aacute;c động lực kinh tế v&agrave; trọng yếu đến &yacute; định mua quần &aacute;o cũ của người ti&ecirc;u d&ugrave;ng Việt Nam; Nghi&ecirc;n cứ về vai tr&ograve; của L&atilde;nh đạo v&agrave; Ph&aacute;t triển Nguồn nh&acirc;n lực trong việc Quản l&yacute; Khủng hoảng,&hellip; được ban tổ chức đ&aacute;nh gi&aacute; cao.</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82885.jpg" />Trong phi&ecirc;n thảo luận 2, c&oacute; 8 b&aacute;o c&aacute;o được tr&igrave;nh b&agrave;y v&agrave; đưa ra thảo luận chuy&ecirc;n s&acirc;u. Một số b&aacute;o c&aacute;o nổi bật như: Khai th&aacute;c dữ liệu để dự đo&aacute;n khả năng ph&aacute; sản: Một thử nghiệm ở Việt Nam; Ho&agrave;n thiện c&ocirc;ng t&aacute;c Kế to&aacute;n để Ph&aacute;t triển Kinh tế Hợp t&aacute;c ở Việt Nam trong Kỷ nguy&ecirc;n Kinh tế; T&aacute;c động của quản trị c&ocirc;ng ty đến chất lượng thu nhập của c&aacute;c doanh nghiệp ni&ecirc;m yết tr&ecirc;n thị trường chứng kho&aacute;n ở Việt Nam&hellip;</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82886.jpg" />09 b&aacute;o c&aacute;o được c&aacute;c diễn giả tr&igrave;nh b&agrave;y tại phi&ecirc;n thảo luận thứ 3 của c&aacute;c t&aacute;c giả đến từ Đại học Kinh tế Quốc d&acirc;n, Đại học Văn Lang, Đại học C&ocirc;ng nghiệp H&agrave; Nội&hellip; đề cập đến những vấn đề thực tiễn trong đại dịch COVID-19 như: T&aacute;c động của đại dịch COVID-19 đối với c&aacute;c doanh nghiệp logistics tại Việt Nam; Ứng dụng c&ocirc;ng nghệ trong quản l&yacute; v&agrave; vận h&agrave;nh chuỗi cung ứng sản phẩm n&ocirc;ng sản ở Việt Nam trong đại dịch Covid-19; Đảm bảo nguồn nh&acirc;n lực cho doanh nghiệp Việt Nam trong đại dịch COVID-19&hellip;</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82887.jpg" />Phi&ecirc;n thảo luận thứ 4, c&aacute;c t&aacute;c giả v&agrave; nh&agrave; khoa học tập trung thảo luận v&agrave; chia sẻ c&aacute;c vấn đề: Nghi&ecirc;n cứu về việc đ&aacute;nh gi&aacute; sự h&agrave;i l&ograve;ng của đa dạng kh&aacute;ch h&agrave;ng trong ng&agrave;nh kh&aacute;ch sạn: Sử dụng m&ocirc; h&igrave;nh Kano; Ảnh hưởng của những trải nghiệm du lịch đ&aacute;ng nhớ đến &yacute; định thăm lại điểm đến du lịch dựa v&agrave;o cộng đồng của du kh&aacute;ch nội địa ở Việt Nam; Quản l&yacute; nguồn nh&acirc;n lực trong gi&aacute;o dục&hellip;</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82888.jpg" />Nghi&ecirc;n cứu vai tr&ograve; trung gian của đ&ograve;n bẩy t&agrave;i ch&iacute;nh trong mối quan hệ giữa định hướng doanh nghiệp v&agrave; hiệu quả hoạt động của c&aacute;c doanh nghiệp vừa v&agrave; nhỏ; C&aacute;c yếu tố quyết định mức độ l&agrave;m trơn cổ tức: Bằng chứng thực nghiệm từ c&aacute;c doanh nghiệp ni&ecirc;m yết tr&ecirc;n s&agrave;n chứng kho&aacute;n Việt Nam&hellip; v&agrave; những nội dung kh&aacute;c, được c&aacute;c nh&agrave; khoa học tr&igrave;nh b&agrave;y v&agrave; chia sẻ tại phi&ecirc;n l&agrave;m việc thứ 5 của Hội thảo</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82889.jpg" />Tại phi&ecirc;n l&agrave;m việc thứ 6, 10 nội dung đ&atilde; được tr&igrave;nh b&agrave;y v&agrave; đưa ra thảo luận: &Yacute; định chuyển đổi số của Doanh nghiệp Việt Nam; Điều tra t&aacute;c động của vốn x&atilde; hội đối với khả năng phục hồi của chuỗi cung ứng v&agrave; hiệu quả hoạt động của chuỗi cung ứng; Năng lực c&ocirc;ng nghệ của c&aacute;c doanh nghiệp sản xuất ở Bắc Trung Bộ: Hiện trạng, vấn đề v&agrave; gợi &yacute; ch&iacute;nh s&aacute;ch&hellip; được đ&aacute;nh gi&aacute; cao</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82890.jpg" />TS. Nguyễn Anh Tuấn - Ph&oacute; Hiệu trưởng Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội chuyển quyền tổ chức ICRMAT 22 cho cho TS.Trương C&ocirc;ng Duẩn - Gi&aacute;m đốc Đ&agrave;o tạo, đại diện Trường Đại học C&ocirc;ng nghệ Swinburne Việt Nam</em></p>

<p style="text-align:center"><em><img alt="Hội thảo khoa học quốc tế Nghiên cứu về Quản lý và Đổi mới Công nghệ 2021 tại Đại học Công nghiệp Hà Nội" src="https://www.haui.edu.vn//media/82/t82891.jpg" />Hội thảo khoa học quốc tế Nghi&ecirc;n cứu về Quản l&yacute; v&agrave; Đổi mới c&ocirc;ng nghệ 2021 (ICRMAT 2021) tại Đại học C&ocirc;ng nghiệp H&agrave; Nội đ&atilde; th&agrave;nh c&ocirc;ng tốt đẹp</em></p>
', CAST(N'2021-12-12T19:42:21.887' AS DateTime), N'/App_Dataimages/s%E1%BB%B1%20ki%E1%BB%87n%201.jpg', 1, 6, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (13, N'NGND.PGS.TS.Trần Đức Quý: Giải pháp đào tạo nguồn nhân lực chất lượng cao phục vụ ngành công nghiệp phụ trợ', N'<p style="text-align:justify">Được v&iacute; như xương sống của nền kinh tế, c&ocirc;ng nghiệp chế biến, chế tạo l&agrave; nền tảng v&agrave; l&agrave; động lực dẫn dắt tăng trưởng của to&agrave;n ng&agrave;nh c&ocirc;ng nghiệp Việt Nam n&oacute;i ri&ecirc;ng v&agrave; nền kinh tế n&oacute;i chung. Vấn đề nh&acirc;n lực phục vụ cho c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp hỗ trợ trở n&ecirc;n thiết yếu, v&agrave; cần thiết hơn bao giờ hết.&nbsp;PGS.TS Trần Đức Qu&yacute; - B&iacute; thư Đảng ủy, Hiệu trưởng nh&agrave; trường đ&atilde; c&oacute; b&agrave;i chia sẻ về vấn đề n&agrave;y v&agrave; c&oacute; g&oacute;c nh&igrave;n về một số giải ph&aacute;p đ&agrave;o tạo nh&acirc;n lực chất lượng cao trong trường đại học, đ&aacute;p ứng y&ecirc;u cầu của doanh nghiệp v&agrave; x&atilde; hội.</p>

<p style="text-align:justify"><em><strong>Thưa PGS, bức tranh chung về nguồn nh&acirc;n lực hiện nay của nước ta phục vụ ng&agrave;nh c&ocirc;ng nghiệp phụ trợ l&agrave; như thế n&agrave;o?</strong></em></p>

<p style="text-align:justify">Đặc th&ugrave; của nền c&ocirc;ng nghiệp phụ trợ l&agrave; c&aacute;c ng&agrave;nh sản xuất chế tạo, do đ&oacute; đ&ograve;i hỏi nguồn nh&acirc;n lực phải đ&aacute;p ứng được một số đặc điểm như: cập nhật c&ocirc;ng nghệ mới, tương th&iacute;ch về mặt chất lượng, tr&igrave;nh độ để hỗ trợ nhau tạo ra c&aacute;c chuỗi sản phẩm. Nguồn nh&acirc;n lực của Việt Nam hiện nay, đặc biệt trong lĩnh vực cơ kh&iacute; chế tạo hay l&agrave; điện tử, &ocirc; t&ocirc;, đều đang thiếu, kh&ocirc;ng những thiếu m&agrave; c&ograve;n đang chưa đ&aacute;p ứng được y&ecirc;u cầu của doanh nghiệp để tạo ra c&aacute;c chuỗi sản phẩm cung ứng cho c&aacute;c tập đo&agrave;n trong lĩnh vực sản xuất sản phẩm c&ocirc;ng nghệ cao.<br />
Trong những năm qua, c&aacute;c trường đại học của Việt Nam cũng chưa thực sự linh hoạt trong đ&agrave;o tạo nh&acirc;n lực ng&agrave;nh c&ocirc;ng nghiệp phụ trợ, nhưng đang dần được cải thiện v&agrave; c&oacute; những đổi mới. Tương lai gần, ch&uacute;ng ta sẽ bắt kịp y&ecirc;u cầu v&agrave; xu hướng thế giới trong đ&agrave;o tạo ra nguồn nh&acirc;n lực chất lượng cao phục vụ ng&agrave;nh c&ocirc;ng nghiệp phụ trợ v&agrave; đ&aacute;p ứng y&ecirc;u cầu nh&acirc;n lực to&agrave;n cầu.</p>

<p style="text-align:justify"><em><strong>Vậy theo thầy, chương tr&igrave;nh đ&agrave;o tạo tại c&aacute;c trường Đại học, Cao đẳng hiện nay đ&atilde; mang lại hiệu quả, đ&aacute;p ứng nhu cầu doanh nghiệp hay chưa?</strong></em></p>

<p style="text-align:justify">C&oacute; thể n&oacute;i ở g&oacute;c độ quản l&yacute; nh&agrave; nước, với sứ mạng v&agrave; tầm nh&igrave;n của một trường đại học, cao đẳng th&igrave; chương tr&igrave;nh đ&agrave;o tạo đ&atilde; phần n&agrave;o đ&aacute;p ứng được nhu cầu của x&atilde; hội. Bởi v&igrave;, khi đ&aacute;nh gi&aacute; sẽ tr&ecirc;n cơ sở, g&oacute;c nh&igrave;n mục ti&ecirc;u, sứ mạng v&agrave; tầm nh&igrave;n cũng như chuẩn đầu ra của c&aacute;c trường khi x&acirc;y dựng chương tr&igrave;nh đ&agrave;o tạo. V&iacute; dụ như ở Đại học C&ocirc;ng nghiệp H&agrave; Nội, l&agrave; một trường đ&agrave;o tạo theo định hướng ứng dụng, th&igrave; khi x&acirc;y dựng chương tr&igrave;nh đ&agrave;o tạo, mục ti&ecirc;u l&agrave; c&aacute;c doanh nghiệp sản xuất cần nguồn nh&acirc;n lực như thế n&agrave;o, ph&acirc;n kh&uacute;c nguồn nh&acirc;n lực v&agrave; vị tr&iacute; việc l&agrave;m khi sinh vi&ecirc;n ra trường x&aacute;c định ở đ&acirc;u&hellip; Nhờ đ&oacute; m&agrave; c&aacute;c chương tr&igrave;nh đ&agrave;o tạo sẽ được thiết kế linh hoạt, ph&ugrave; hợp.</p>

<p style="text-align:justify"><em><strong>Theo PGS, việc li&ecirc;n kết giữa trường đại học, viện, doanh nghiệp hiện nay đ&atilde; thực sự tạo điều kiện cho sinh vi&ecirc;n ra trường c&oacute; việc l&agrave;m v&agrave; đ&aacute;p ứng nhu cầu c&ocirc;ng việc hay chưa?</strong></em></p>

<p style="text-align:justify">Hiện nay, vấn đề mối li&ecirc;n kết giữa trường đại học, viện với doanh nghiệp l&agrave; vấn đề cần quan t&acirc;m trong d&agrave;i hạn, ở đ&acirc;y kh&ocirc;ng những l&agrave; vấn đề định hướng của nh&agrave; nước về mặt ph&aacute;p luật, m&agrave; quan trọng nhất đ&oacute; l&agrave; vấn đề quyền lợi tự th&acirc;n của c&aacute;c tổ chức n&agrave;y. C&aacute;c trường, viện v&agrave; doanh nghiệp phải tự thấy được quyền lợi của m&igrave;nh trong việc li&ecirc;n kết với nhau để đ&agrave;o tạo ra nguồn nh&acirc;n lực chất lượng cao.<br />
Đại học C&ocirc;ng nghiệp H&agrave; Nội cũng x&aacute;c định: mối quan hệ với doanh nghiệp rất quan trọng, gắn liền với chương tr&igrave;nh đ&agrave;o tạo của nh&agrave; trường, v&igrave; ch&uacute;ng t&ocirc;i x&aacute;c định nguồn nh&acirc;n lực đ&agrave;o tạo ra phải đ&aacute;p ứng được nhu cầu nh&acirc;n lực ng&agrave;y c&agrave;ng cao của doanh nghiệp v&agrave; x&atilde; hội. Do đ&oacute;, khi x&acirc;y dựng chương tr&igrave;nh đ&agrave;o tạo, ch&uacute;ng t&ocirc;i lấy &yacute; kiến, khảo s&aacute;t nhu cầu của doanh nghiệp, lấy &yacute; kiến của c&aacute;c chuy&ecirc;n gia về chương tr&igrave;nh đ&agrave;o tạo c&oacute; ph&ugrave; hợp với nhu cầu của x&atilde; hội hay kh&ocirc;ng.<br />
B&ecirc;n cạnh đ&oacute;, tr&ecirc;n cơ sở lấy &yacute; kiến của doanh nghiệp, nh&agrave; trường x&aacute;c định chuẩn đầu ra v&agrave; x&acirc;y dựng kiến khối kiến thức, kỹ năng, để từ đ&oacute; x&acirc;y dựng c&aacute;c m&ocirc;n học ph&ugrave; hợp. V&igrave; vậy, mối quan hệ l&acirc;u d&agrave;i giữa nh&agrave; trường v&agrave; doanh nghiệp, ngo&agrave;i sự định hướng hỗ trợ của nh&agrave; nước, th&igrave; c&aacute;c tổ chức n&agrave;y phải thấy được quyền lợi thực sự khi hợp t&aacute;c với nhau, để từ đ&oacute; c&ugrave;ng nhau ph&aacute;t triển.</p>

<p style="text-align:justify"><strong><em>Cần c&oacute; những giải ph&aacute;p n&agrave;o trong việc li&ecirc;n kết hay t&igrave;m nguồn hỗ trợ b&ecirc;n ngo&agrave;i trong việc đ&agrave;o tạo nguồn nh&acirc;n lực chất lượng cao, thưa &ocirc;ng ?</em></strong></p>

<p style="text-align:justify"><em><strong>Giải ph&aacute;p thứ nhất:</strong></em>&nbsp;chương tr&igrave;nh đ&agrave;o tạo phải thiết kế lại để ph&ugrave; hợp với xu thế quốc tế v&agrave; đặc biệt l&agrave; đ&aacute;p ứng được với nhu cầu của doanh nghiệp. Đại học C&ocirc;ng nghiệp H&agrave; Nội đang d&ugrave;ng quy tr&igrave;nh CDIO của Mỹ để thiết kế lại chương tr&igrave;nh, trong đ&oacute; c&oacute; những kh&acirc;u m&agrave; ch&uacute;ng t&ocirc;i phải khảo s&aacute;t từ doanh nghiệp, v&agrave; cũng mời doanh nghiệp tham gia v&agrave;o qu&aacute; tr&igrave;nh đ&agrave;o tạo của nh&agrave; trường.<br />
<em><strong>Giải ph&aacute;p thứ hai</strong></em>: Nh&agrave; trường lu&ocirc;n tạo cơ hội v&agrave; điều kiện để sinh vi&ecirc;n được đến gần hơn với doanh nghiệp, th&ocirc;ng qua việc tổ chức nhiều hội thảo việc l&agrave;m, hội thảo tư vấn tuyển dụng&hellip;<br />
<em><strong>Giải ph&aacute;p thứ ba:</strong></em>&nbsp;Nh&agrave; trường gi&uacute;p sinh vi&ecirc;n được thực tập tr&ecirc;n hệ thống m&aacute;y m&oacute;c, trang thiết bị hiện đại, được trải nghiệm tại c&aacute;c cơ sở sản xuất, doanh nghiệp thực tế để tiếp cận sự ph&aacute;t triển của c&ocirc;ng nghệ mới, để sau n&agrave;y khi ra l&agrave;m tại doanh nghiệp, sẽ kh&ocirc;ng bị bỡ ngỡ, lạc hậu.<br />
<em><strong>Giải ph&aacute;p thứ tư:</strong></em>&nbsp;C&aacute;c thầy c&ocirc; cần phải thay đổi tư duy v&agrave; phương ph&aacute;p đ&agrave;o tạo ph&ugrave; hớp với xu thế thời đại, n&acirc;ng cao chất lượng đ&agrave;o tạo kh&ocirc;ng chỉ bằng kiến thức v&agrave; c&ograve;n phải l&agrave; người huấn luyện vi&ecirc;n, truyền cảm hứng cho sinh vi&ecirc;n, để sinh vi&ecirc;n thực sự học v&agrave; đam m&ecirc; ng&agrave;nh, nghề m&igrave;nh chọn, để đủ tự tin theo đuổi ước mơ.</p>

<p style="text-align:justify"><strong>Xin cảm ơn về chia sẻ của PGS!</strong></p>
', CAST(N'2021-12-12T19:43:23.680' AS DateTime), N'/App_Dataimages/s%E1%BB%B1%20ki%E1%BB%87n%202.jpg', 1, 6, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (14, N'Nam sinh viên "đa năng" trường Đại học Công nghiệp Hà Nội từng là chàng trai nhút nhát', N'<p style="text-align:justify">Trần Phi Lực - ch&agrave;ng trai 21 tuổi đến từ Vĩnh Ph&uacute;c, hiện đang l&agrave; Ph&oacute; Chủ tịch Hội Sinh vi&ecirc;n trường Đại học C&ocirc;ng nghiệp H&agrave; Nội. Được biết đến l&agrave; anh ch&agrave;ng &ldquo;đa năng&rdquo; với học lực tốt, nghi&ecirc;n cứu khoa học say m&ecirc;, hoạt động phong tr&agrave;o s&ocirc;i nổi nhưng &iacute;t ai biết rằng Phi Lực trước đ&acirc;y l&agrave; ch&agrave;ng trai nh&uacute;t nh&aacute;t v&agrave; c&oacute; h&agrave;nh tr&igrave;nh &ldquo;kh&aacute;m ph&aacute; bản th&acirc;n&rdquo; đầy th&uacute; vị.</p>

<p><strong>Bước qua &ldquo;giới hạn&rdquo; bản th&acirc;n</strong></p>

<p style="text-align:justify">B&eacute;n duy&ecirc;n c&ugrave;ng c&ocirc;ng t&aacute;c Hội v&agrave; phong tr&agrave;o sinh vi&ecirc;n từ năm nhất của đại học, Phi Lực đ&atilde; lu&ocirc;n nắm bắt cơ hội để ph&aacute;t triển bản th&acirc;n v&agrave; nỗ lực phấn đấu để ho&agrave;n th&agrave;nh. Hiện Phi Lực đang giữ nhiều chức vụ trong c&ocirc;ng t&aacute;c Đo&agrave;n - Hội của trường Đại học C&ocirc;ng nghiệp như: Ủy vi&ecirc;n BCH Đo&agrave;n Trường, Ph&oacute; Chủ tịch Hội Sinh vi&ecirc;n Trường, Li&ecirc;n chi Hội trưởng LCH Khoa C&ocirc;ng nghệ th&ocirc;ng tin, Ủy vi&ecirc;n Ban chấp h&agrave;nh Li&ecirc;n chi Đo&agrave;n Khoa C&ocirc;ng nghệ th&ocirc;ng tin...</p>

<p style="text-align:justify">&ldquo;M&igrave;nh lu&ocirc;n cảm thấy rất vui v&agrave; tự h&agrave;o v&igrave; được anh chị em tin tưởng v&agrave; giao trọng tr&aacute;ch đối với tổ chức&rdquo;, Lực chia sẻ.</p>

<p><img alt="" src="/App_Dataimages/ho%E1%BA%A1t%20%C4%91%E1%BB%99ng1.jpg" style="height:600px; width:800px" /></p>

<p style="text-align:justify">Tuy nhi&ecirc;n, kh&ocirc;ng phải từ đầu, Lực đ&atilde; tự tin nhận những vị tr&iacute; thủ lĩnh trong c&aacute;c hoạt động Đo&agrave;n - Hội như b&acirc;y giờ. Lực t&acirc;m sự: &ldquo;Hồi cấp Ba, m&igrave;nh l&agrave; người nh&uacute;t nh&aacute;t, kh&oacute; giao tiếp với mọi người. M&igrave;nh kh&ocirc;ng tham gia c&aacute;c hoạt động đo&agrave;n thể cũng bởi lẽ m&igrave;nh cho rằng kh&ocirc;ng ph&ugrave; hợp với t&iacute;nh c&aacute;ch của bản th&acirc;n. Ch&iacute;nh v&igrave; vậy khi chập những bước ch&acirc;n v&agrave;o giảng đường đại học, th&ecirc;m v&agrave;o đ&oacute; ch&uacute;ng m&igrave;nh học tập tại H&agrave; Nam - nơi ho&agrave;n to&agrave;n xa lạ với cậu sinh vi&ecirc;n c&ograve;n đang quen với gia đ&igrave;nh, thầy c&ocirc;, bạn b&egrave;... m&igrave;nh đ&atilde; cảm thấy rất lạc l&otilde;ng&rdquo;.</p>

<p style="text-align:justify">Tuy nhi&ecirc;n, Phi Lực đ&atilde; nỗ lực thay đổi ch&iacute;nh bản th&acirc;n m&igrave;nh bằng chọn c&aacute;ch &ldquo;dấn th&acirc;n&rdquo; c&ugrave;ng c&aacute;c hoạt động t&igrave;nh nguyện. &ldquo;Nhờ c&ocirc;ng t&aacute;c t&igrave;nh nguyện, từ một ch&agrave;ng sinh vi&ecirc;n nh&uacute;t nh&aacute;t m&igrave;nh đ&atilde; trở n&ecirc;n năng động v&agrave; nhiệt huyết hơn. Qua c&aacute;c hoạt động, m&igrave;nh thấy trưởng th&agrave;nh hơn, biết th&ecirc;m nhiều kỹ năng như: Lập kế hoạch, tổ chức chương tr&igrave;nh, xử l&yacute; t&igrave;nh huống&hellip; những thứ m&agrave; m&igrave;nh kh&ocirc;ng được học tr&ecirc;n giảng đường để từ đ&oacute; ph&aacute;t huy những điểm mạnh v&agrave; hạn chế những điểm yếu.&rdquo; - ch&agrave;ng sinh vi&ecirc;n chia sẻ.</p>

<p style="text-align:center"><img alt="" src="/App_Dataimages/1_1.jpg" style="height:422px; width:645px" /></p>

<p style="text-align:center"><em>Nam sinh vi&ecirc;n g&oacute;p sức trong c&aacute;c hoạt động ph&ograve;ng chống dịch COVID-19.</em></p>

<p style="text-align:center"><img alt="" src="/App_Dataimages/1_2.jpg" style="height:363px; width:645px" /></p>

<p style="text-align:center"><em>Ch&agrave;ng trai trường C&ocirc;ng nghiệp đi khắp mọi miền để thực hiện c&ocirc;ng t&aacute;c thiện nguyện</em>.</p>

<p><strong>Trải nghiệm qua những h&agrave;nh tr&igrave;nh</strong></p>

<p>L&agrave; một người trẻ, Phi Lực cho rằng ch&uacute;ng ta n&ecirc;n sống hết m&igrave;nh với những năm th&aacute;ng tuổi trẻ. Lực cho biết th&ocirc;ng qua những chương tr&igrave;nh t&igrave;nh nguyện như &ldquo;Ai cũng c&oacute; Tết&rdquo; tại M&egrave;o Vạc - H&agrave; Giang, c&aacute;c chương tr&igrave;nh t&igrave;nh nguyện v&igrave; cộng đồng, ph&aacute;t qu&agrave; cho người v&ocirc; gia cư, Lực tự h&agrave;o đ&atilde; đ&oacute;ng g&oacute;p một phần c&ocirc;ng sức để gi&uacute;p cuộc sống của trẻ em v&ugrave;ng cao, những người v&ocirc; gia cư... bớt đi phần n&agrave;o kh&oacute; khăn.</p>

<p style="text-align:center"><img alt="" src="/App_Dataimages/1_3.jpg" style="height:860px; width:645px" /></p>

<p style="text-align:center"><em>Phi Lực trong một chuyến đi thiện nguyện tại bệnh viện.</em></p>

<p style="text-align:justify">Phi Lực tiết lộ, tham gia c&ocirc;ng t&aacute;c Hội c&ograve;n gi&uacute;p bạn tr&ecirc;n nhiều phương diện - trong đ&oacute; c&oacute; học tập. Ch&iacute;nh nhờ v&agrave;o c&aacute;c hoạt động đ&atilde; gi&uacute;p Lực c&oacute; th&ecirc;m những kinh nghiệm v&agrave; vận dụng v&agrave;o trong học tập, từ đ&oacute; đạt kết quả cao. Bạn đ&atilde; đạt danh hiệu &quot;Sinh vi&ecirc;n 5 tốt&quot; cấp trường năm học 2018 - 2019, &quot;Sinh vi&ecirc;n 5 tốt&quot; cấp trường năm học 2020 - 2021, đạt giải khuyến kh&iacute;ch Sinh vi&ecirc;n nghi&ecirc;n cứu khoa học cấp trường năm học 2020 - 2021.</p>

<p style="text-align:center"><img alt="" src="/App_Dataimages/1_4.jpg" style="height:430px; width:645px" /></p>

<p style="text-align:center"><em>Hoạt động Đo&agrave;n Hội gi&uacute;p Phi Lực cải thiện kết quả thi đua, học tập.</em></p>

<p style="text-align:justify">Với c&aacute;c th&agrave;nh t&iacute;ch đ&aacute;ng nể như Bằng khen của TƯ Hội Sinh vi&ecirc;n Việt Nam về th&agrave;nh t&iacute;ch xuất sắc trong c&ocirc;ng t&aacute;c Hội v&agrave; phong tr&agrave;o sinh vi&ecirc;n năm học 2020 - 202; Bằng khen Hội Sinh vi&ecirc;n th&agrave;nh phố H&agrave; Nội về th&agrave;nh t&iacute;ch xuất sắc trong c&ocirc;ng t&aacute;c Hội v&agrave; phong tr&agrave;o sinh vi&ecirc;n giai đoạn 2016 - 2020; Bằng khen của Th&agrave;nh Đo&agrave;n H&agrave; Nội về đ&atilde; tham gia t&iacute;ch cực chương tr&igrave;nh nghệ thuật ch&agrave;o mừng th&agrave;nh c&ocirc;ng Đại hội Đảng bộ TP. H&agrave; Nội lần thứ XVII; &ldquo;Gương mặt trẻ cấp trường năm 2020&rdquo; do Đo&agrave;n trường tổ chức..., ch&agrave;ng trai 21 tuổi cho biết bản th&acirc;n vẫn đang kh&ocirc;ng ngừng cố gắng học hỏi để trang bị h&agrave;nh trang vững v&agrave;ng cho c&aacute;c h&agrave;nh tr&igrave;nh tiếp theo.</p>

<p style="text-align:right">Nguồn:&nbsp;<a href="https://hoahoctro.tienphong.vn/nam-sinh-vien-da-nang-truong-dai-hoc-cong-nghiep-ha-noi-tung-la-chang-trai-nhut-nhat-post1399471.tpo?fbclid=IwAR2yIq-OgLdeP-LtxrPLtfgdD7dm61fEMA0BMEsQ79xwsklucTT9wqdUscw">https://hoahoctro.tienphong.vn/</a></p>

<p>&nbsp;</p>
', CAST(N'2021-12-12T19:50:45.347' AS DateTime), N'/App_Dataimages/ho%E1%BA%A1t%20%C4%91%E1%BB%99ng1.jpg', 4, 8, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (15, N'Câu chuyện thành công của “Chàng IT Tỉnh lẻ” Đinh Ngọc Cường', N'<p style="text-align:justify">Xuất ph&aacute;t điểm l&agrave; một kỹ sư khoa học m&aacute;y t&iacute;nh, Đinh Ngọc Cường đ&atilde; dũng cảm dấn th&acirc;n v&agrave;o lĩnh vực truyền th&ocirc;ng v&agrave; trở th&agrave;nh một chuy&ecirc;n gia Marketing Online. Anh trở th&agrave;nh một h&igrave;nh mẫu cho c&aacute;c bạn trẻ d&aacute;m đam m&ecirc;, d&aacute;m thử th&aacute;ch. Vậy ph&iacute;a sau th&agrave;nh c&ocirc;ng của gi&aacute;m đốc 9x n&agrave;y c&oacute; g&igrave; th&uacute; vị?</p>

<p><strong>Ng&atilde; rẽ quan trọng trong sự nghiệp</strong></p>

<p style="text-align:justify">Đinh Ngọc Cường sinh năm 1992 tại H&ograve;a B&igrave;nh. Hiện anh l&agrave; Gi&aacute;m đốc điều h&agrave;nh của C&ocirc;ng ty truyền th&ocirc;ng Vietime Media. L&agrave; một gương mặt nổi bật trong lĩnh vực Marketing Online, &iacute;t ai biết anh đ&atilde; phải trải qua rất nhiều thất bại để c&oacute; được những th&agrave;nh c&ocirc;ng như ng&agrave;y h&ocirc;m nay.</p>

<p style="text-align:center"><img alt="Đinh Ngọc Cường là gương mặt nổi bật trong lĩnh vực Marketing Online" src="https://www.haui.edu.vn//media/82/t82760.jpg" /><em>Đinh Ngọc Cường l&agrave; gương mặt nổi bật trong lĩnh vực Marketing Online</em></p>

<p style="text-align:justify">Đinh Ngọc Cường tốt nghiệp kỹ sư khoa học m&aacute;y t&iacute;nh tại trường Đại học C&ocirc;ng nghiệp H&agrave; Nội. Sau khoảng 2 năm l&agrave;m c&ocirc;ng việc đ&uacute;ng chuy&ecirc;n ng&agrave;nh, &ldquo;ch&agrave;ng IT tỉnh lẻ&rdquo; đ&atilde; c&oacute; một quyết định v&ocirc; c&ugrave;ng. t&aacute;o bạo. Anh từ bỏ c&ocirc;ng việc IT ổn định với mức lương l&ecirc;n tới 1000 đ&ocirc; để chuyển sang một lĩnh vực mới: Marketing Online.</p>

<p style="text-align:center"><img alt="Anh từ bỏ mức lương IT 1.000 đô để chuyển sang lĩnh vực mới " src="https://www.haui.edu.vn//media/82/t82761.jpg" /><em>Anh từ bỏ mức lương IT 1.000 đ&ocirc; để chuyển sang lĩnh vực mới</em></p>

<p style="text-align:justify">Đinh Ngọc Cường cho biết đ&oacute; l&agrave; quyết định quan trọng nhất trong cuộc đời của anh. Thời điểm đ&oacute;, anh nhận thấy ng&agrave;nh truyền th&ocirc;ng c&oacute; tiềm năng ph&aacute;t triển lớn trong tương lai. Do vậy, anh đ&atilde; dũng cảm từ bỏ c&ocirc;ng việc đ&uacute;ng chuy&ecirc;n ng&agrave;nh v&agrave; chuyển sang học hỏi những kiến thức về Marketing Online.</p>

<p style="text-align:center"><img alt="Hiện anh là giám đốc điều hành công ty truyền thông Vietime Media" src="https://www.haui.edu.vn//media/82/t82762.jpg" /><em>Hiện anh l&agrave; gi&aacute;m đốc điều h&agrave;nh c&ocirc;ng ty truyền th&ocirc;ng Vietime Media</em></p>

<p style="text-align:center"><img alt="Anh còn có niềm đam mê đứng sau ống kính máy quay" src="https://www.haui.edu.vn//media/82/t82763.jpg" /><em>Anh c&ograve;n c&oacute; niềm đam m&ecirc; đứng sau ống k&iacute;nh m&aacute;y quay</em></p>

<p><strong>L&agrave;m quen với thất bại</strong></p>

<p style="text-align:justify">Dấn th&acirc;n v&agrave;o một lĩnh vực mới, Đinh Ngọc Cường gặp v&ocirc; v&agrave;n kh&oacute; khăn v&agrave; thất bại trong thời gian đầu. Chưa C&oacute; kiến thức nền tảng, kh&ocirc;ng l&agrave;m đ&uacute;ng chuy&ecirc;n ng&agrave;nh học, thiếu mối quan hệ v&agrave; kỹ năng giao tiếp... ch&agrave;ng trai 9x khi đ&oacute; cảm thấy v&ocirc; c&ugrave;ng &ldquo;chơi vơi&rdquo;. Anh đi phỏng vấn, thực tập tại nhiều c&ocirc;ng ty truyền th&ocirc;ng nhưng đều nhanh ch&oacute;ng rời đi. C&ocirc;ng việc kh&ocirc;ng ổn định, thu nhập bấp b&ecirc;nh... Tất cả mọi thứ đ&egrave; nặng l&ecirc;n vai Đinh Ngọc Cường.</p>

<p style="text-align:center"><img alt="Thời gian đầu chàng trai 9x gặp nhiều khó khăn" src="https://www.haui.edu.vn//media/82/t82764.jpg" /><em>Thời gian đầu ch&agrave;ng trai 9x gặp nhiều kh&oacute; khăn</em></p>

<p style="text-align:justify"><strong>Ki&ecirc;n tr&igrave; v&agrave; nắm bắt cơ hội l&agrave; b&iacute; quyết th&agrave;nh c&ocirc;ng</strong></p>

<p style="text-align:justify">Kh&ocirc;ng nản ch&iacute; trước những kh&oacute; khăn ban đầu, Đinh Ngọc Cường đ&atilde; ki&ecirc;n tr&igrave; v&agrave; kh&ocirc;ng ngừng học hỏi. Anh xin v&agrave;o l&agrave;m thực tập tại một c&ocirc;ng ty truyền th&ocirc;ng, kh&ocirc;ng ngừng học hỏi những kiến thức Marketing Online từ những người đi trước. Đồng thời t&iacute;ch cực tham gia c&aacute;c buổi hội thảo, trao đổi về truyền th&ocirc;ng. C&oacute; được những kiến thức nền m&oacute;ng, Đinh Ngọc Cường tiếp tục học n&acirc;ng cao, t&igrave;m tới c&aacute;c chuy&ecirc;n gia chuy&ecirc;n s&acirc;u về lĩnh vực Marketing Online.</p>

<p style="text-align:center"><img alt="Sự kiên trì không ngừng học hỏi đã giúp anh có được thành công" src="https://www.haui.edu.vn//media/82/t82765.jpg" /><em>Sự ki&ecirc;n tr&igrave; kh&ocirc;ng ngừng học hỏi đ&atilde; gi&uacute;p anh c&oacute; được th&agrave;nh c&ocirc;ng</em></p>

<p style="text-align:justify">Đinh Ngọc Cường chia sẻ, th&agrave;nh c&ocirc;ng 80% đến từ nỗ lực v&agrave; 20% l&agrave; từ cơ hội. Khi c&aacute;c đồng nghiệp tan l&agrave;m, anh vẫn ngồi lại cơ quan tiếp tục nghi&ecirc;n cứu t&agrave;i liệu. C&oacute; thời gian anh l&agrave;m việc tới 15 tiếng mỗi ng&agrave;y. Dần dần, gi&aacute;m đốc giao cho anh nhiều dự &aacute;n quan trọng. Anh trở th&agrave;nh Leader của cả team.</p>

<p style="text-align:justify">Sau khi đ&atilde; t&iacute;ch lũy được kiến thức v&agrave; x&acirc;y dựng được c&aacute;c mối quan hệ x&atilde; hội, Đinh Ngọc Cường lại đưa ra một quyết định t&aacute;o bạo. Anh xin nghỉ việc ở C&ocirc;ng ty v&agrave; khởi nghiệp c&ugrave;ng một số người bạn, th&agrave;nh lập C&ocirc;ng ty truyền th&ocirc;ng Vietime Media. Trải qua nhiều năm hoạt động, Vietime Media đ&atilde; đạt được nhiều th&agrave;nh c&ocirc;ng trong c&aacute;c dịch vụ tổ chức sự kiện, quảng c&aacute;o doanh nghiệp, x&acirc;y dựng thương hiệu... Bản th&acirc;n Gi&aacute;m đốc Đinh Ngọc Cường cũng trở th&agrave;nh một chuy&ecirc;n gia Marketing Online, đưa c&ocirc;ng ty trở th&agrave;nh một C&ocirc;ng ty truyền th&ocirc;ng mạnh tr&ecirc;n thị trường. Đồng thời, gi&uacute;p đỡ nhiều bạn trẻ kh&aacute;c C&oacute; đam m&ecirc; khởi nghiệp trong lĩnh vực n&agrave;y. Hiện tại, Đinh Ngọc Cường cũng đang &ldquo;lấn s&acirc;n&rdquo; sang lĩnh vực Bất động sản với dự &aacute;n Vietime Land.</p>

<p style="text-align:center"><img alt="Anh hiện đang thử thách thêm ở lĩnh vực Bất động sản" src="https://www.haui.edu.vn//media/82/t82766.jpg" /><em>Anh hiện đang thử th&aacute;ch th&ecirc;m ở lĩnh vực Bất động sản</em></p>

<p style="text-align:justify">Từ một &ldquo;anh IT tỉnh lẻ&rdquo;, Đinh Ngọc Cường đ&atilde; d&aacute;m bứt ph&aacute; khỏi giới hạn của bản th&acirc;n, đương đầu với những thử th&aacute;ch trong những lĩnh vực mới mẻ. Th&agrave;nh c&ocirc;ng của anh l&agrave; minh chứng cho việc chỉ cần đam m&ecirc; v&agrave; d&aacute;m đương đầu với kh&oacute; khăn, bạn c&oacute; thể th&agrave;nh c&ocirc;ng!</p>

<p>C&ugrave;ng chờ đ&oacute;n những dự &aacute;n tiếp theo của vị gi&aacute;m đốc 9x đầy t&agrave;i năng n&agrave;y nh&eacute;!</p>

<p style="text-align:right"><em><strong>Nguồn:&nbsp;<a href="https://nguoinoitieng.net/chia-se/cau-chuyen-thanh-cong-cua-chang-it-tinh-le-dinh-ngoc-cuong.html">nguoinoitieng.net</a></strong></em></p>
', CAST(N'2021-12-12T19:53:47.380' AS DateTime), N'/App_Dataimages/ho%E1%BA%A1t%20%C4%91%E1%BB%99ng%202.jpg', 1, 8, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (16, N'Trung tâm Quản lý Ký túc xá: Hướng tới mô hình Ký túc xá thông minh', N'<p style="text-align:justify">Trung t&acirc;m Quản l&yacute; K&yacute; t&uacute;c x&aacute; Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội l&agrave; đơn vị dịch vụ, phục vụ thực hiện theo cơ chế kho&aacute;n quản, với nhiệm vụ phục vụ vi&ecirc;n chức v&agrave; sinh vi&ecirc;n về c&aacute;c hoạt động: K&yacute; t&uacute;c x&aacute;, tr&ocirc;ng giữ phương tiện, dịch vụ ăn uống, căng tin. Mục đ&iacute;ch của trung t&acirc;m l&agrave; phục vụ tốt, tạo m&ocirc;i trường gi&aacute;o dục tốt nhất, x&acirc;y dựng văn h&oacute;a, thương hiệu của Đại học C&ocirc;ng nghiệp H&agrave; Nội (ĐHCNHN), lấy t&ocirc;n chỉ phục vụ chất lượng cao l&agrave; nhiệm vụ l&acirc;u d&agrave;i v&agrave; bền vững của trung t&acirc;m.</p>

<p style="text-align:justify">Năm học 2020 - 2021 đ&atilde; kh&eacute;p lại với nhiều kh&oacute; khăn do đại dịch Covid -19. Trong d&ograve;ng chảy ấy, Trung t&acirc;m Quản l&yacute; K&yacute; t&uacute;c x&aacute; (QLKTX) Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội đ&atilde; quyết t&acirc;m vượt qua, biến kh&oacute; khăn th&agrave;nh cơ hội, đổi mới để th&iacute;ch ứng với thời kỳ cả nước ph&ograve;ng chống dịch bệnh.</p>

<p style="text-align:center"><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82807.jpg" /><em>Khu&ocirc;n vi&ecirc;n Trung t&acirc;m Quản l&yacute; K&yacute; t&uacute;c x&aacute; - Đại học C&ocirc;ng nghiệp H&agrave; Nội</em></p>

<p><strong>I. Nh&igrave;n lại những kết quả nổi bật của trung t&acirc;m giai đoạn tự chủ đại học từ 2017 - 2021 v&agrave; kết quả năm học 2020 - 2021</strong></p>

<p style="text-align:justify">Gi&aacute;o dục đại học g&oacute;p phần đ&agrave;o tạo cho x&atilde; hội những c&ocirc;ng d&acirc;n tri thức, kh&ocirc;ng chỉ c&oacute; kiến thức m&agrave; c&ograve;n bao gồm cả vốn sống, văn h&oacute;a. Đối với những sinh vi&ecirc;n xa nh&agrave;, K&yacute; t&uacute;c x&aacute; l&agrave; m&ocirc;i trường tốt để r&egrave;n luyện, trau dồi c&aacute;c phẩm chất đ&oacute;. X&aacute;c định r&otilde; mục ti&ecirc;u đ&oacute;, Trung t&acirc;m đ&atilde; thực hiện tốt nhiệm vụ tuy&ecirc;n truyền, phổ biến, gi&aacute;o dục c&aacute;c chủ trương, đường lối, c&aacute;c quy định đối với sinh vi&ecirc;n bằng nhiều h&igrave;nh thức tuy&ecirc;n truyền c&oacute; &yacute; nghĩa, tạo hiệu ứng tốt. Hệ thống đại học điện tử của Trường đ&atilde; gi&uacute;p Trung t&acirc;m đ&atilde; đổi mới mạnh mẽ ứng dụng c&ocirc;ng nghệ trong thực hiện c&ocirc;ng t&aacute;c quản l&yacute;, phục vụ sinh vi&ecirc;n tốt hơn. Sinh vi&ecirc;n c&oacute; thể đăng k&yacute; ở k&yacute; t&uacute;c x&aacute; tr&ecirc;n phần mềm, được chọn loại ph&ograve;ng, gi&aacute; ph&ograve;ng; đ&oacute;ng kinh ph&iacute; v&agrave; theo d&otilde;i kinh ph&iacute; ở k&yacute; t&uacute;c x&aacute; tr&ecirc;n phần mềm. Mọi hoạt động được triển khai linh hoạt, minh bạch v&agrave; thuận lợi.</p>

<p style="text-align:center"><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82811.jpg" /><em>Trung t&acirc;m Quản l&yacute; k&yacute; t&uacute;c x&aacute; tại cơ sở 2, T&acirc;y Tựu, Bắc Từ Li&ecirc;m, H&agrave; Nội</em></p>

<p style="text-align:justify">Được sự quan t&acirc;m của L&atilde;nh đạo nh&agrave; trường, K&yacute; t&uacute;c x&aacute; ĐHCNHN tại 3 cơ sở đều được đầu tư khang trang, từ cảnh quan, m&ocirc;i trường đến cơ sở vật chất c&aacute;c ph&ograve;ng, điều h&ograve;a, n&oacute;ng lạnh, khu vệ sinh, hệ thống giường tủ, mạng Internet,&hellip; C&oacute; ph&ograve;ng cấp 3 sao d&agrave;nh ri&ecirc;ng cho c&aacute;c chuy&ecirc;n gia, giảng vi&ecirc;n nước ngo&agrave;i đến c&ocirc;ng t&aacute;c, l&agrave;m việc tại trường. Trung t&acirc;m c&oacute; hệ thống ph&ograve;ng sinh hoạt chung, ph&ograve;ng tiếp kh&aacute;ch, ph&ograve;ng m&aacute;y t&iacute;nh để c&aacute;c em sinh hoạt, học tập, rất tiện &iacute;ch.<br />
B&ecirc;n cạnh chuẩn bị c&aacute;c điều kiện tốt nhất về nơi ở, sinh hoạt cho sinh vi&ecirc;n nội tr&uacute;, cho giảng vi&ecirc;n, chuy&ecirc;n gia đến c&ocirc;ng t&aacute;c, l&agrave;m việc tại trường, Đại học C&ocirc;ng nghiệp H&agrave; Nội c&ograve;n đầu tư, quan t&acirc;m đặc biệt cho dịch vụ ăn uống, sinh hoạt của sinh vi&ecirc;n, vi&ecirc;n chức, người lao động. Phải khẳng định rằng, rất &iacute;t c&aacute;c trường đại học c&oacute; khu nh&agrave; ăn v&agrave; c&aacute;c dịch vụ ăn uống tốt như tại Đại học C&ocirc;ng nghiệp H&agrave; Nội. Nh&agrave; trường c&oacute; 03 nh&agrave; ăn tại 03 cơ sở khang trang hiện đại. Tại cơ sở H&agrave; Nam phục vụ th&ecirc;m cho học vi&ecirc;n trung t&acirc;m Quốc ph&ograve;ng an ninh. Năm qua, dịch bệnh đ&atilde; l&agrave;m ảnh hưởng nghi&ecirc;m trọng đến hoạt động dịch vụ ăn uống, căn tin, nhưng Trung t&acirc;m đ&atilde; tận dụng thời gian n&agrave;y để l&agrave;m mới hơn, hiện đại hơn kh&ocirc;ng gian, cảnh quan, nội thất c&aacute;c ph&ograve;ng ăn, chuẩn bị c&aacute;c thực đơn thời kỳ mới, hấp dẫn v&agrave; đa dạng để tới đ&acirc;y mong muốn phục vụ tốt nhất cho học vi&ecirc;n, sinh vi&ecirc;n, c&aacute;c thầy c&ocirc; gi&aacute;o.</p>

<p><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82812.jpg" /></p>

<p style="text-align:center"><em>Trung t&acirc;m K&yacute; t&uacute;c x&aacute; (Cở sở H&agrave; Nam)</em></p>

<p style="text-align:justify">Tại Đại học C&ocirc;ng nghiệp H&agrave; Nội, sinh vi&ecirc;n nội tr&uacute; đang được hưởng những điều kiện tốt nhất cho việc ổn định cuộc sống để học tập v&agrave; ph&aacute;t triển bản th&acirc;n. Với phương ph&aacute;p gi&aacute;o dục hiện đại v&agrave; mở như hiện nay, Trung t&acirc;m QLKTX nhận thấy việc tạo điều kiện tổ chức hoạt động nh&oacute;m v&agrave; c&aacute;c c&acirc;u lạc bộ cho sinh vi&ecirc;n nội tr&uacute; l&agrave; rất cần thiết v&agrave; quan trọng. Ngo&agrave;i giờ học, sinh vi&ecirc;n được tham gia phong tr&agrave;o 5S, tập huấn PCCN v&agrave; nhiều m&ocirc;n thể thao y&ecirc;u th&iacute;ch như b&oacute;ng chuyền, b&oacute;ng rổ, x&agrave; đơn, x&agrave; k&eacute;p, đ&aacute; cầu, b&oacute;ng đ&aacute;. Việc tham gia c&aacute;c hoạt động ngoại kh&oacute;a kh&ocirc;ng những g&oacute;p phần l&agrave;m tăng hiệu học quả học tập m&agrave; c&ograve;n gi&uacute;p sinh vi&ecirc;n ph&aacute;t triển c&aacute;c kỹ năng x&atilde; hội, tăng cường sức khỏe thể chất, mang đến những kinh nghiệm bổ &iacute;ch v&agrave; qu&yacute; gi&aacute; cho cuộc sống sau n&agrave;y.<br />
Trong bối cảnh dịch bệnh, nhiều Trường kh&ocirc;ng duy tr&igrave; được c&aacute;c hoạt động cho sinh vi&ecirc;n ở k&yacute; t&uacute;c x&aacute;, nhưng với Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội, k&yacute; t&uacute;c x&aacute; vẫn hoạt động b&igrave;nh thường, lu&ocirc;n sẵn s&agrave;ng đ&oacute;n sinh vi&ecirc;n quay trở lại trường theo kế hoạch; đ&atilde; tổ chức cho sinh vi&ecirc;n c&aacute;c kh&oacute;a cũ đang ở qu&ecirc; đăng k&yacute; ở KTX đạt 85%. Trung t&acirc;m đ&atilde; chủ động phối hợp với ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n, c&aacute;c đơn vị trong trường thường xuy&ecirc;n trao đổi th&ocirc;ng tin với c&ocirc;ng an địa phương, triển khai c&ocirc;ng t&aacute;c đăng k&yacute; tạm tr&uacute;, kịp thời nắm bắt diễn biến tư tưởng, gi&aacute;o dục sinh vi&ecirc;n, đảm bảo an to&agrave;n, đặc biệt l&agrave; sinh vi&ecirc;n quốc tế.<br />
B&ecirc;n cạnh đ&oacute;, Trung t&acirc;m lu&ocirc;n x&acirc;y dựng kế hoạch c&aacute;c hoạt động hỗ trợ sinh vi&ecirc;n nội tr&uacute;. Sinh vi&ecirc;n được sống trong một m&ocirc;i trường th&acirc;n thiện, ph&ugrave; hợp với mong muốn nguyện vọng của giới trẻ hiện nay, khu&ocirc;n khổ nhưng kh&ocirc;ng cứng nhắc. Ch&iacute;nh v&igrave; vậy, số lượng sinh vi&ecirc;n ở k&yacute; t&uacute;c x&aacute; lu&ocirc;n ở mức cao, trung b&igrave;nh đạt tr&ecirc;n 90%.<br />
Với Trung t&acirc;m, kh&ocirc;ng đặt mục ti&ecirc;u kinh doanh, chủ yếu mang đến cho người học, c&aacute;n bộ, giảng vi&ecirc;n sự an t&acirc;m v&agrave; an to&agrave;n, đến với c&aacute;c dịch vụ phục vụ của Trung t&acirc;m Quản l&yacute; K&yacute; t&uacute;c x&aacute; l&agrave; đến với sự th&acirc;n thiện, ấm &aacute;p, kh&ocirc;ng chỉ l&agrave; nơi ở sạch đẹp, ăn uống ngon, m&agrave; c&ograve;n l&agrave; nơi tận hưởng những ph&uacute;t gi&acirc;y thư gi&atilde;n sau giờ l&agrave;m việc v&agrave; học tập căng thẳng.<br />
<em><strong>C&aacute;c hoạt động chung tay c&ugrave;ng cả nước chống dịch</strong></em><br />
Trong bối cảnh to&agrave;n thế giới v&agrave; to&agrave;n x&atilde; hội chung tay ph&ograve;ng chống dịch bệnh Covid -19, Trung t&acirc;m QLKTX Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội đ&atilde; chủ động, phối hợp với c&aacute;c đơn vị trong v&agrave; ngo&agrave;i Nh&agrave; trường, s&aacute;ng tạo, vượt kh&oacute; để g&oacute;p phần thực hiện nhiệm vụ ch&iacute;nh trị của nh&agrave; trường v&agrave; c&aacute;c hoạt động cộng đồng.<br />
Thời gian vừa qua, sinh vi&ecirc;n của trường kh&ocirc;ng về qu&ecirc;, sinh vi&ecirc;n quốc tế cũng kh&ocirc;ng về nước, c&aacute;c em ở lại K&yacute; t&uacute;c x&aacute; của Trường. Vấn đề đặt ra cho trung t&acirc;m l&agrave; c&ocirc;ng t&aacute;c quản l&yacute;, kiểm so&aacute;t, đảm bảo ph&ograve;ng chống dịch nhưng vẫn đảm bảo m&ocirc;i trường sống đầy đủ, an to&agrave;n, tạo t&acirc;m l&yacute; thoải m&aacute;i cho c&aacute;c em, Trung t&acirc;m đ&atilde; huy động nguồn lực, thực hiện tốt việc tuy&ecirc;n truyền, triển khai thực hiện c&aacute;c văn bản, quy định, chỉ thị của Đảng, Nh&agrave; nước, c&aacute;c Bộ, Ng&agrave;nh, địa phương, đặc biệt của ban chỉ đạo ph&ograve;ng chống dịch nh&agrave; trường tới c&aacute;n bộ, sinh vi&ecirc;n nội tr&uacute;; bố tr&iacute; c&aacute;n bộ nh&acirc;n vi&ecirc;n c&aacute;c bộ phận đồng h&agrave;nh c&ugrave;ng sinh vi&ecirc;n (cả sinh vi&ecirc;n Việt Nam v&agrave; quốc tế), chia sẻ những kh&oacute; khăn, hỗ trợ khi c&aacute;c em cần về vật chất, tinh thần v&agrave; sức khỏe, y tế; thực hiện c&aacute;c biện ph&aacute;p ph&ograve;ng chống dịch: 5K + vắc xin; phun khử khuẩn, vệ sinh m&ocirc;i trường, tăng cường dung dịch s&aacute;t khuẩn, khẩu khang, đo th&acirc;n nhiệt,... B&ecirc;n cạnh đ&oacute;, Trung t&acirc;m c&ograve;n đảm bảo đường truyền internet miễn ph&iacute; gi&uacute;p sinh vi&ecirc;n học trực tuyến một c&aacute;ch tốt nhất. Bố tr&iacute; ở gi&atilde;n c&aacute;ch, ăn gi&atilde;n c&aacute;ch, bố tr&iacute; ph&ograve;ng c&aacute;ch ly khi c&oacute; sinh vi&ecirc;n c&oacute; biểu hiện ốm sốt, hoặc từ địa phương c&oacute; dịch trở về trường; tổ chức lấy phiếu thăm d&ograve; &yacute; kiến c&aacute;c em trong thời gian chống dịch.</p>

<p><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82809.jpg" /></p>

<p style="text-align:center"><em>Trao qu&agrave; hỗ trợ cho sinh vi&ecirc;n quốc tế v&agrave; sinh vi&ecirc;n Việt Nam ở lại KTX nh&agrave; trường trong đợt dịch COVID 19</em></p>

<p style="text-align:justify">Cũng trong thời gian qua, Nh&agrave; trường đẩy mạnh ti&ecirc;m vắc-xin cho vi&ecirc;n chức, người lao động, sinh vi&ecirc;n ở nội tr&uacute;, sinh vi&ecirc;n quốc tế cũng được bố tr&iacute;, đưa đ&oacute;n đi ti&ecirc;m đảm bảo an to&agrave;n, thuận lợi. Trung t&acirc;m thường xuy&ecirc;n phối hợp với trạm y tế thực hiện theo d&otilde;i v&agrave; hỗ trợ sinh vi&ecirc;n khi gặp vấn đề về sức khỏe. Phối hợp với Ph&ograve;ng C&ocirc;ng t&aacute;c sinh vi&ecirc;n, Đo&agrave;n thanh ni&ecirc;n tổ chức c&aacute;c hoạt động, gi&uacute;p đỡ, động vi&ecirc;n sinh vi&ecirc;n nội tr&uacute;, trao qu&agrave; hỗ trợ, gi&uacute;p sinh vi&ecirc;n y&ecirc;n t&acirc;m sinh hoạt v&agrave; học tập trong thời gian dịch bệnh.<br />
B&ecirc;n cạnh việc thực hiện ph&ograve;ng chống dịch trong nh&agrave; trường, Trung t&acirc;m c&ograve;n thực hiện nhiệm vụ ch&iacute;nh trị của nh&agrave; trường chung tay c&ugrave;ng cả nước chống dịch: X&acirc;y dựng phương &aacute;n, chuẩn bị khu c&aacute;ch ly năm 2020 tại KTX cơ sở 1, năm 2021 tại cơ sở 2 của trường theo y&ecirc;u cầu của th&agrave;nh phố H&agrave; Nội, sẵn s&agrave;ng việc b&agrave;n giao cơ sở vật chất phục vụ cho c&aacute;ch ly y tế khi c&oacute; y&ecirc;u cầu. Th&aacute;o lắp, vận chuyển 500 bộ giường từ cơ sở đ&agrave;o tạo của trường tại H&agrave; Nam l&ecirc;n khu c&aacute;ch ly v&agrave; b&agrave;n giao cho BCHQS Quận Bắc Từ Li&ecirc;m. Trung t&acirc;m QLKTX Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội lu&ocirc;n sẵn s&agrave;ng chung tay v&igrave; cộng đồng.<br />
<strong>II. Mục ti&ecirc;u của trung t&acirc;m trong 5 năm tới v&agrave; năm học 2021-2022.</strong><br />
C&ugrave;ng với sự đổi mới, hiện đại theo chiến lược ph&aacute;t triển của nh&agrave; trường, Trung t&acirc;m QLKTX quyết t&acirc;m đổi mới, tạo những dấu ấn quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển v&agrave; hội nhập.<br />
Quyết t&acirc;m x&acirc;y dựng m&ocirc; h&igrave;nh K&yacute; t&uacute;c x&aacute; th&ocirc;ng minh, tr&ocirc;ng giữ phương tiện th&ocirc;ng minh: Quản l&yacute; th&ocirc;ng minh, ph&ograve;ng ở th&ocirc;ng minh, gi&aacute;m s&aacute;t th&ocirc;ng minh, ứng dụng hiệu quả cao, sử dụng c&ocirc;ng nghệ trong c&aacute;c hoạt động, hướng tới sử dụng thẻ điện tử kiểm tra ra v&agrave;o với sinh vi&ecirc;n ở KTX, tr&ocirc;ng giữ phương tiện v&agrave; hướng dẫn vị tr&iacute; đỗ xe tự động; th&iacute; điểm triển khai kết hợp với camera nhận diện khu&ocirc;n mặt; thu ph&iacute;, thanh to&aacute;n, hệ thống cảnh b&aacute;o, điều khiển tự động.<br />
X&acirc;y dựng m&ocirc; h&igrave;nh dịch vụ kh&ocirc;ng gian mở: đ&oacute; l&agrave; tự phục vụ th&ocirc;ng qua c&aacute;c thiết bị hỗ trợ, b&aacute;n h&agrave;ng tự động. C&aacute;c thiết bị tự phục vụ như m&aacute;y photocopy, m&aacute;y in, scanner t&iacute;nh tiền theo số lượng thực tế. Thời gian kh&ocirc;ng xa đến với nh&agrave; ăn, sinh vi&ecirc;n sẽ được hướng dẫn thực đơn tự động, lựa chọn m&oacute;n ăn v&agrave; thanh to&aacute;n điện tử; sẽ cảm nhận được sự đầy đủ v&agrave; tiện &iacute;ch, từ si&ecirc;u thị, khu cắt t&oacute;c gội đầu, khu giặt l&agrave;, khu thể thao, văn h&oacute;a, m&ocirc;i trường xanh với kh&ocirc;ng gian l&atilde;ng mạn, ấm &aacute;p, cảnh c&acirc;y hoa l&aacute; rực rỡ bốn m&ugrave;a.<br />
Đến với Trung t&acirc;m QLKTX, kh&aacute;ch h&agrave;ng sẽ cảm nhận được sự ấm &aacute;p v&agrave; hiện đại; đội ngũ c&aacute;n bộ, nh&acirc;n vi&ecirc;n trung t&acirc;m lu&ocirc;n tiếp thu, lắng nghe, nhiệt huyết v&agrave; th&acirc;n thiện.</p>

<p><strong>H&Atilde;Y TIN D&Ugrave;NG DỊCH VỤ CỦA CH&Uacute;NG T&Ocirc;I!</strong></p>

<p><u><strong>MỘT SỐ H&Igrave;NH ẢNH CỦA TRUNG T&Acirc;M:</strong></u></p>

<p><u><strong><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82813.jpg" /></strong></u></p>

<p><u><strong><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82814.jpg" /></strong></u></p>

<p><u><strong><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82815.jpg" /></strong></u></p>

<p><u><strong><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82816.jpg" /></strong></u></p>

<p><u><strong><img alt="TRUNG TÂM QUẢN LÝ KÝ TÚC XÁ HƯỚNG TỚI MÔ HÌNH KÝ TÚC XÁ THÔNG MINH" src="https://www.haui.edu.vn//media/82/t82817.jpg" /></strong></u></p>

<p><u><strong><img alt="Trung tâm Quản lý Ký túc xá: Hướng tới mô hình Ký túc xá thông minh" src="https://www.haui.edu.vn//media/82/t82818.jpg" /></strong></u></p>
', CAST(N'2021-12-12T19:56:40.883' AS DateTime), N'/App_Dataimages/t73819.jpg', 1, 7, 0)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id], [LuotXem]) VALUES (17, N'Hoạt động thực tập gắn với doanh nghiệp giúp nâng cao năng lực thực tiễn và kỹ năng mềm cho sinh viên', N'<p style="text-align:right"><em><strong>TS. Th&acirc;n Thanh Sơn, Trưởng khoa Du lịch</strong></em></p>

<p><strong>1. Kh&aacute;i qu&aacute;t chung</strong></p>

<p style="text-align:justify">Gi&aacute;o dục v&agrave; đ&agrave;o tạo gắn với thực tiễn nghề nghiệp l&agrave; y&ecirc;u cầu tất yếu đối với c&aacute;c trường đại học, nhất l&agrave; trong điều kiện ph&aacute;t triển kinh tế tri thức v&agrave; hội nhập quốc tế. Để l&agrave;m tốt điều n&agrave;y c&aacute;c trường đại học cần thiết lập mối quan hệ gắn kết chặt chẽ với doanh nghiệp. Nh&agrave; trường v&agrave; doanh nghiệp c&ugrave;ng tham gia vảo qu&aacute; tr&igrave;nh đ&agrave;o tạo. Ch&iacute;nh v&igrave; vậy, hoạt động thực tập, thực h&agrave;nh trải nghiệm thực tiễn tại doanh nghiệp l&agrave; y&ecirc;u cầu bắt buộc đối với sinh vi&ecirc;n. Theo Hager v&agrave; Gonczi (1996), c&aacute;c cơ sở gi&aacute;o dục đại học cần phải x&acirc;y dựng một chương tr&igrave;nh đ&agrave;o tạo tối ưu nhằm gi&uacute;p sinh vi&ecirc;n kh&ocirc;ng chỉ nắm bắt được l&yacute; thuyết một c&aacute;ch s&acirc;u sắc, triệt để, m&agrave; c&ograve;n phải c&oacute; năng lực thực tiễn v&agrave; kỹ năng mềm để c&oacute; thể đ&aacute;p ứng được đầy đủ nhu cầu v&agrave; đ&ograve;i hỏi của thị trường lao động. Trong đ&oacute;:</p>

<p style="text-align:justify">L&yacute; thuyết ch&iacute;nh l&agrave; sự đ&uacute;c kết từ thực tiễn, được h&igrave;nh th&agrave;nh v&agrave; dần đi v&agrave;o hệ thống khi con người nhận thức thế giới kh&aacute;ch quan. Qua thời gian, c&aacute;c l&yacute; thuyết n&agrave;y trở th&agrave;nh quy luật v&agrave; được &aacute;p dụng ngược trở lại để giải th&iacute;ch thực tiễn (Eraut, 2000).</p>

<p style="text-align:justify">Kh&aacute;c với kiến thức l&yacute; thuyết, năng lực thực tiễn thường được đ&uacute;c kết, m&ocirc; tả dưới dạng c&aacute;c quy tr&igrave;nh, như: quy tr&igrave;nh lập kế hoạch, quy tr&igrave;nh thực hiện, quy tr&igrave;nh kiểm so&aacute;t, quy tr&igrave;nh ra quyết định, c&aacute;c hoạt động thực tiễn (Kieran Setiya, 2009). Năng lực thực tiễn đ&ograve;i hỏi sinh vi&ecirc;n phải c&oacute; khả năng ph&aacute;n đo&aacute;n, c&acirc;n nhắc,.. (Bereiter &amp; cộng sự, 1993).</p>

<p style="text-align:justify">Kỹ năng mềm c&ograve;n gọi l&agrave; kỹ năng thực h&agrave;nh x&atilde; hội, li&ecirc;n quan đến việc sử dụng ng&ocirc;n ngữ, thể hiện khả năng h&ograve;a m&igrave;nh v&agrave;o, sống với hay tương t&aacute;c với x&atilde; hội, cộng đồng, tập thể hoặc tổ chức. Kỹ năng mềm thường bao gồm: kỹ năng giao tiếp, kỹ năng l&agrave;m việc theo nh&oacute;m, kỹ năng s&aacute;ng tạo v&agrave; đổi mới,.. (Francis Green, 2011).</p>

<p style="text-align:center"><em><img alt="Hoạt động thực tập gắn với doanh nghiệp giúp nâng cao năng lực thực tiễn và kỹ năng mềm cho sinh viên" src="https://www.haui.edu.vn//media/82/t82796.jpg" />Lễ k&yacute; kết bi&ecirc;n bản ghi nhớ hợp t&aacute;c giữa Đại học C&ocirc;ng nghiệp H&agrave; Nội với c&aacute;c kh&aacute;ch sạn v&agrave; c&ocirc;ng ty du lịch năm 2020</em></p>

<p style="text-align:justify">Hoạt động thực tập gắn kết với doanh nghiệp ch&iacute;nh l&agrave; hoạt động học tập gi&uacute;p sinh vi&ecirc;n gắn l&yacute; thuyết với thực tiễn, n&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm, bởi cả nh&agrave; trường v&agrave; doanh nghiệp đều c&oacute; tr&aacute;ch nhiệm v&agrave; lợi &iacute;ch.</p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>Nh&agrave; trường</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Doanh nghiệp</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><u><em><strong>Mong muốn</strong></em></u></p>

			<p>N&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm cho sinh vi&ecirc;n, từ đ&oacute; sinh vi&ecirc;n c&oacute; thể đ&aacute;p ứng nhu cầu của doanh nghiệp</p>
			</td>
			<td>
			<p><u><strong><em>C&oacute; khả năng</em></strong></u></p>

			<p>Cung cấp vị tr&iacute; thực tập cho sinh vi&ecirc;n</p>

			<p>Hướng dẫn thực h&agrave;nh, trải nghiệm thực tế cho sinh vi&ecirc;n</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><u><em><strong>C&oacute; khả năng</strong></em></u></p>

			<p>X&acirc;y dựng chương tr&igrave;nh đ&agrave;o tạo v&agrave; thực hiện hoạt động d&agrave;o tạo theo chương tr&igrave;nh</p>
			</td>
			<td>
			<p><u><em><strong>Mong muốn</strong></em></u></p>

			<p>Tuyển dụng đủ nh&acirc;n lực c&oacute; năng lực ph&ugrave; hợp, đ&aacute;p ứng được y&ecirc;u cầu c&ocirc;ng việc</p>
			</td>
		</tr>
	</tbody>
</table>

<p><strong>2. Hoạt động thực tập, thực h&agrave;nh doanh nghiệp n&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm của sinh vi&ecirc;n tại Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội</strong></p>

<p><strong>2.1. C&aacute;c hoạt động thực tập, thực h&agrave;nh gắn với doanh nghiệp</strong></p>

<p>L&agrave; cơ sở đ&agrave;o tạo theo định hướng ứng dụng, Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội lu&ocirc;n quan t&acirc;m đến hoạt động thực tập, thực h&agrave;nh trải nghiệm thực tế tại c&aacute;c doanh nghiệp, nhằm đảm bảo cho sinh vi&ecirc;n c&oacute; đủ thời gian để vận dụng l&yacute; thuyết v&agrave;o thực tiễn, được r&egrave;n luyện v&agrave; ph&aacute;t triển kỹ năng trong m&ocirc;i trường thực tiễn. Ch&iacute;nh v&igrave; vậy, thời lượng d&agrave;nh cho c&aacute;c hoạt động như thực tập, thực h&agrave;nh, thực tế gắn kết với doanh nghiệp chiểm khoảng 30-40% tổng thời lượng của chương tr&igrave;nh đ&agrave;o tạo (CTĐT) (bảng 1).</p>

<p><em>Bảng 1. Thời lượng c&aacute;c hoạt động gắn với doanh nghiệp trong CTĐT c&aacute;c ng&agrave;nh</em></p>

<table border="1" cellspacing="0">
	<thead>
		<tr>
			<td>
			<p style="text-align:center"><strong>STT</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Hoạt động gắn kết với doanh nghiệp</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Tỷ trọng trong CTĐT (%)</strong></p>
			</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>Thực h&agrave;nh tại doanh nghiệp</p>
			</td>
			<td>
			<p>11 &divide; 15</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>Thực tập tại doanh nghiệp</p>
			</td>
			<td>
			<p>20 &divide; 30</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>3</p>
			</td>
			<td>
			<p>Trung b&igrave;nh</p>
			</td>
			<td>
			<p>30 &divide; 40</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>(Nguồn: tổng hợp theo CTĐT c&aacute;c ng&agrave;nh)</em></p>

<p>Trong qu&aacute; tr&igrave;nh đ&agrave;o tạo trung b&igrave;nh một sinh vi&ecirc;n c&oacute; &iacute;t nhất 3 lần trải nghiệm thực tế tại doanh nghiệp. B&igrave;nh qu&acirc;n mỗi năm, khoảng 20.000 - 25.000 lượt sinh vi&ecirc;n trải nghiệm thực tế tại 5.200 - 5.450 doanh nghiệp (bảng 2).</p>

<p><em>Bảng 2. Số lượng sinh vi&ecirc;n đi thực tập, trải nghiệm thực tế</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>Nội dung</strong></p>
			</td>
			<td>
			<p><strong>Năm học 2017 - 2018</strong></p>
			</td>
			<td>
			<p><strong>Năm học 2018 - 2019</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Số doanh nghiệp tiếp nhận sinh vi&ecirc;n đến thực tập, thực h&agrave;nh trải nghiệm thực tế (lượt)</p>
			</td>
			<td>
			<p>5.200</p>
			</td>
			<td>
			<p>5.450</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>Số sinh vi&ecirc;n đi thực tập, thực h&agrave;nh thực tế tại doanh nghiệp (lượt)</p>
			</td>
			<td>
			<p>20.415</p>
			</td>
			<td>
			<p>24.780</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>(Nguồn: Tổng hợp theo b&aacute;o c&aacute;o khảo s&aacute;t của Trung t&acirc;m Hợp t&aacute;c doanh nghiệp)</em></p>

<p style="text-align:center"><img alt="Hoạt động thực tập gắn với doanh nghiệp giúp nâng cao năng lực thực tiễn và kỹ năng mềm cho sinh viên" src="https://www.haui.edu.vn//media/82/t82797.jpg" /></p>

<p style="text-align:center"><em>Sinh vi&ecirc;n Đại học Du lịch Kh&oacute;a 13 với H&agrave;nh tr&igrave;nh di sản miền Trung</em></p>

<p style="text-align:justify">Với nhiều nỗ lực của Nh&agrave; trường, Khoa chuy&ecirc;n m&ocirc;n v&agrave; giảng vi&ecirc;n trong triển khai c&aacute;c hoạt động hợp t&aacute;c với c&aacute;c doanh nghiệp trong việc tổ chức c&aacute;c hoạt động thực tập, thực h&agrave;nh gi&uacute;p cho người học học tập trải nghiệm thực tiễn tại doanh nghiệp đ&atilde; thể hiện qua mức độ hợp t&aacute;c doanh nghiệp bảng 3. Mức độ hợp t&aacute;c được đ&aacute;nh gi&aacute; theo thang điểm 5 (với 1 điểm l&agrave; mức độ hợp t&aacute;c rất yếu v&agrave; 5 điểm l&agrave; mức độ hợp t&aacute;c rất chặt chẽ).</p>

<p><em>Bảng 3. Mức độ hợp t&aacute;c doanh nghiệp, nh&agrave; trường, khoa chuy&ecirc;n m&ocirc;n v&agrave; giảng vi&ecirc;n hướng dẫn trong qu&aacute; tr&igrave;nh hỗ trợ sinh vi&ecirc;n thực h&agrave;nh, thực tập tại doanh nghiệp.</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p style="text-align:center"><strong>STT</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Khối ng&agrave;nh</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Đ&aacute;nh gi&aacute; về mức độ hợp t&aacute;c</strong></p>
			</td>
			<td>
			<p style="text-align:center"><strong>Ghi ch&uacute;</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:center">1</p>
			</td>
			<td>
			<p style="text-align:center">Khối ng&agrave;nh Kỹ thuật</p>
			</td>
			<td>
			<p style="text-align:center">4,29</p>
			</td>
			<td style="text-align:center">&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:center">2</p>
			</td>
			<td>
			<p style="text-align:center">Khối ng&agrave;nh Kinh tế x&atilde; hội</p>
			</td>
			<td>
			<p style="text-align:center">4,27</p>
			</td>
			<td style="text-align:center">&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:center">3</p>
			</td>
			<td>
			<p style="text-align:center">B&igrave;nh qu&acirc;n chung</p>
			</td>
			<td>
			<p style="text-align:center">4,28</p>
			</td>
			<td style="text-align:center">&nbsp;</td>
		</tr>
	</tbody>
</table>

<p style="text-align:center">&nbsp;</p>

<p><em>(Nguồn: T&iacute;nh to&aacute;n dựa tr&ecirc;n kết quả khảo s&aacute;t 2020)</em></p>

<p>Kết quả khảo s&aacute;t mức độ hợp t&aacute;c theo thang điểm 5 đối với khối ng&agrave;nh kỹ thuật l&agrave; 4,29 điểm v&agrave; khối ng&agrave;nh kinh tế x&atilde; hội l&agrave; 4,26 điểm v&agrave; với mức độ hợp t&aacute;c chung của to&agrave;n trường l&agrave; 4,28 điểm cho thấy mức độ hợp t&aacute;c l&agrave; chặt chẽ.</p>

<p><strong>2.2. Kết quả hoạt động thực tập gắn với doanh nghiệp nhằm n&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm của sinh vi&ecirc;n</strong></p>

<p>Qu&aacute; tr&igrave;nh thực tập, thực h&agrave;nh của sinh vi&ecirc;n gắn liền với doanh nghiệp, doanh nghiệp sẽ tham gia v&agrave;o qu&aacute; tr&igrave;nh đ&aacute;nh gi&aacute;, bồi dưỡng v&agrave; đ&agrave;o tạo th&ecirc;m cho sinh vi&ecirc;n về mặt kiến thức thực tế, n&acirc;ng cao năng lực thực tế v&agrave; kỹ năng mềm cho sinh vi&ecirc;n. Mức độ đ&aacute;nh gi&aacute; theo thang điểm 5 (với 1 điểm l&agrave; mức độ rất yếu v&agrave; 5 điểm l&agrave; mức độ rất tốt), bảng 4.</p>

<p><em>Bảng 4. Đ&aacute;nh gi&aacute; của doanh nghiệp về năng lực thực tiễn v&agrave; kỹ năng mềm của sinh vi&ecirc;n Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội.</em></p>

<table border="1" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>STT</strong></p>
			</td>
			<td>
			<p><strong>Nội dung</strong></p>
			</td>
			<td>
			<p><strong>Mức độ đ&aacute;nh gi&aacute;</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p>1</p>
			</td>
			<td>
			<p>Năng lực thực tiễn</p>
			</td>
			<td>
			<p>3,70</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2</p>
			</td>
			<td>
			<p>Kỹ năng mềm</p>
			</td>
			<td>
			<p>3,74</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>(Nguồn: T&iacute;nh to&aacute;n dựa tr&ecirc;n kết quả khảo s&aacute;t 2020)</em></p>

<p>Kết quả đ&aacute;nh gi&aacute; của doanh nghiệp cho thấy n&acirc;ng cao năng lực thực tiễn của sinh vi&ecirc;n Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội đạt 3,70 ở ngưỡng đầu ti&ecirc;n trong mức tốt, tương tư l&agrave; đ&aacute;nh gi&aacute; về kỹ năng mềm được h&igrave;nh th&agrave;nh qua qu&aacute; tr&igrave;nh thực tập, thực h&agrave;nh l&agrave; 3,74.</p>

<p>Kết quả khảo s&aacute;t đối với 2.091 sinh vi&ecirc;n cho thấy 97,4 % sinh vi&ecirc;n cho rằng hoạt động gắn kết doanh nghiệp gi&uacute;p họ n&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm. Dựa v&agrave;o ph&acirc;n t&iacute;ch dữ liệu, c&oacute; thể cụ thể h&oacute;a kết quả trong bảng 5.</p>

<p><em>Bảng 5. Hoạt động gắn kết doanh nghiệp gi&uacute;p sinh vi&ecirc;n n&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm của sinh vi&ecirc;n Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội.</em></p>

<table border="1" cellspacing="0">
	<thead>
		<tr>
			<td rowspan="2">
			<p><strong>Nội dung</strong></p>
			</td>
			<td colspan="3">
			<p><strong>Gi&aacute; trị trung b&igrave;nh (t&iacute;nh tr&ecirc;n thang điểm 5)</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>Khối kỹ thuật</strong></p>

			<p><strong>(1.566 &yacute; kiến)</strong></p>
			</td>
			<td>
			<p><strong>Khối kinh tế x&atilde; hội</strong></p>

			<p><strong>(525 &yacute; kiến)</strong></p>
			</td>
			<td>
			<p><strong>Trường ĐHCNHN</strong></p>

			<p><strong>(2.091 &yacute; kiến)</strong></p>
			</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
			<p>1. N&acirc;ng cao năng lực thực tiễn</p>
			</td>
			<td>
			<p>4,26</p>
			</td>
			<td>
			<p>4,25</p>
			</td>
			<td>
			<p>4,26</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>2. Ph&aacute;t triển kỹ năng mềm</p>
			</td>
			<td>
			<p>4,15</p>
			</td>
			<td>
			<p>4,29</p>
			</td>
			<td>
			<p>4,18</p>
			</td>
		</tr>
	</tbody>
</table>

<p><em>(Nguồn: T&iacute;nh to&aacute;n dựa tr&ecirc;n kết quả khảo s&aacute;t 2020)</em></p>

<p>Sinh vi&ecirc;n đ&aacute;nh gi&aacute; cao c&aacute;c hoạt động thực tập, thực h&agrave;nh gi&uacute;p c&aacute;c em ph&aacute;t triển được c&aacute;c kỹ năng mềm cần thiết (giao tiếp, l&agrave;m việc nh&oacute;m,..) với mức độ đ&aacute;nh gi&aacute;: 4,18 v&agrave; n&acirc;ng cao năng lực thực tiễn l&agrave; 4,26. Kết quả tự đ&aacute;nh gi&aacute; của sinh vi&ecirc;n cũng kh&aacute; tương đồng với đ&aacute;nh gi&aacute; của doanh nghiệp, tuy nhi&ecirc;n g&oacute;c nh&igrave;n của doanh nghiệp l&agrave; người sử dụng c&oacute; khắt khe hơn (bảng 4).</p>

<p style="text-align:center"><em><img alt="Hoạt động thực tập gắn với doanh nghiệp giúp nâng cao năng lực thực tiễn và kỹ năng mềm cho sinh viên" src="https://www.haui.edu.vn//media/82/t82798.jpg" /></em></p>

<p style="text-align:center"><em>Sinh vi&ecirc;n khoa Du lịch n&acirc;ng cao năng lực thực tiễn v&agrave; kỹ năng mềm qua c&aacute;c hoạt động thực tập</em></p>

<p><strong>2.3. Đ&aacute;nh gi&aacute; ưu điểm, hạn chế v&agrave; nguy&ecirc;n nh&acirc;n</strong></p>

<p><em><strong>2.3.1. Ưu điểm</strong></em></p>

<p>- Chủ trương, định hướng tăng cường gắn kết giữa nh&agrave; trường, khoa v&agrave; doanh nghiệp nhằm n&acirc;ng cao chất lượng đ&agrave;o tạo l&agrave; ho&agrave;n to&agrave;n đ&uacute;ng đắn.</p>

<p>- Chương tr&igrave;nh đ&agrave;o tạo được thiết kế với 30-40% thời lượng thực h&agrave;nh, thực tập tại doanh nghiệp gi&uacute;p sinh vi&ecirc;n vận dụng những kiến thức học v&agrave;o thực tế cũng như t&iacute;ch lũy được kinh nghiệm nghề nghiệp ngay từ khi ngồi tr&ecirc;n ghế nh&agrave; trường. Từ đ&oacute;, sau khi ra trường sinh vi&ecirc;n nhanh ch&oacute;ng đ&aacute;p ứng được ngay nhu cầu của người sử dụng lao động.</p>

<p>- Chất lượng thực tập lu&ocirc;n được đảm bảo như cam kết trong chương tr&igrave;nh đ&agrave;o tạo. Để c&oacute; được kết quả n&agrave;y l&agrave; do nội dung thực tập được quy định r&otilde; r&agrave;ng, đội ngũ giảng vi&ecirc;n của trường v&agrave; đội ngũ hướng dẫn tại doanh nghiệp lu&ocirc;n tận t&igrave;nh với sinh vi&ecirc;n trong thời gian thực tập, sinh vi&ecirc;n t&iacute;ch cực, chăm chỉ, lu&ocirc;n tu&acirc;n thủ quy định của nh&agrave; trường cũng như quy định của doanh nghiệp.</p>

<p>- Vị tr&iacute; thực tập tại c&aacute;c doanh nghiệp rất đa dạng, đ&aacute;p ứng được chuẩn đầu ra của chương tr&igrave;nh đ&agrave;o tạo. Do nh&agrave; trường, c&aacute;c khoa đ&atilde; c&oacute; trao đổi thỏa thuận với doanh nghiệp về chương tr&igrave;nh thực tập, thực h&agrave;nh cho sinh vi&ecirc;n.</p>

<p><em><strong>2.3.2. Hạn chế v&agrave; nguy&ecirc;n nh&acirc;n</strong></em></p>

<p>- Hoạt động hợp t&aacute;c giữa Nh&agrave; trường, Khoa, giảng vi&ecirc;n với doanh nghiệp được đ&aacute;nh gi&aacute; chặt chẽ. Tuy nhi&ecirc;n cần chuẩn h&oacute;a bộ ti&ecirc;u ch&iacute; để đ&aacute;nh gi&aacute; mức độ hợp t&aacute;c, ho&agrave;n thiện cơ chế hợp t&aacute;c đảm bảo tăng cường quyền lợi v&agrave; tr&aacute;ch nhiệm của doanh nghiệp trong hoạt động hợp t&aacute;c.</p>

<p>- Chưa c&oacute; sự thống nhất chung trong việc x&acirc;y dựng bộ ti&ecirc;u ch&iacute; nhằm đ&aacute;nh gi&aacute; mức độ thực hiện c&ocirc;ng việc của giảng vi&ecirc;n hướng dẫn.</p>

<p>- Kế hoạch thực tập, thực h&agrave;nh trải nghiệm thực tiễn chưa linh hoạt,</p>

<p>- Vẫn c&ograve;n một số sinh vi&ecirc;n chưa tich cực chủ động do chưa hiểu r&otilde; mục đ&iacute;ch, &yacute; nghĩa của c&aacute;c đợt thực tập doanh nghiệp.</p>

<p style="text-align:center"><img alt="Hoạt động thực tập gắn với doanh nghiệp giúp nâng cao năng lực thực tiễn và kỹ năng mềm cho sinh viên" src="https://www.haui.edu.vn//media/82/t82799.jpg" /></p>

<p style="text-align:center"><em>Sinh vi&ecirc;n khoa Du lịch tham gia chương tr&igrave;nh FAMTRIP &ldquo;Miền Trung đ&oacute;n bạn&rdquo;</em></p>

<p><strong>3. Kết luận v&agrave; đề xuất</strong></p>

<p style="text-align:justify">C&oacute; c&aacute;ch n&agrave;o tốt hơn để học hơn l&agrave; việc phải trải nghiệm qua thực tế? Wren v&agrave; cộng sự (2002) đ&atilde; đưa ra c&acirc;u trả lời l&agrave; c&oacute; thể học được bằng c&aacute;ch th&ocirc;ng qua hoạt động học tập kết hợp chặt chẽ giữa nghi&ecirc;n cứu l&yacute; thuyết v&agrave; trải nghiệm thực tiễn th&ocirc;ng qua c&aacute;c h&igrave;nh thức thực h&agrave;nh thực tập tại doanh nghiệp. Kết quả nghi&ecirc;n cứu thực nghiệm tại Trường Đại học C&ocirc;ng nghiệp H&agrave; Nội, c&oacute; thể thấy, hoạt động thực tập, thực h&agrave;nh trải nghiệm thực tế tại doanh nghiệp đ&atilde; thực sự gi&uacute;p sinh vi&ecirc;n n&acirc;ng cao năng lực chuy&ecirc;n m&ocirc;n, r&egrave;n kỹ năng nhằm đ&aacute;p ứng y&ecirc;u cầu ng&agrave;y c&agrave;ng cao, ng&agrave;y c&agrave;ng khắt khe của kinh tế thị trường lao động hiện nay.</p>

<p>Để ph&aacute;t huy hiệu quả của hoạt động thực tập, trải nghiệm thực tế tại doanh nghiệp, cần c&oacute; giải ph&aacute;p cụ thể:</p>

<p><em><strong>(i) Với Nh&agrave; trường</strong></em></p>

<p style="text-align:justify">- Cần x&acirc;y dựng bộ ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute; mức độ hợp t&aacute;c doanh nghiệp nhằm chọn doanh nghiệp ph&ugrave; hợp với từng ng&agrave;nh đ&agrave;o tạo, từng khoa đ&agrave;o tạo. Tr&ecirc;n cơ sở đ&oacute;, Nh&agrave; trường k&yacute; thỏa thuận nhằm tăng cường hợp t&aacute;c chặt chẽ hơn nữa với doanh nghiệp.</p>

<p style="text-align:justify">- Cần c&oacute; cơ chế r&otilde; r&agrave;ng, tạo dựng sự đồng thuận về quyền lợi v&agrave; tr&aacute;ch nhiệm giữa doanh nghiệp v&agrave; nh&agrave; trường.</p>

<p style="text-align:justify">- Ho&agrave;n thiện hệ thống văn bản hướng dẫn đ&aacute;nh gi&aacute; xếp loại sinh vi&ecirc;n cho doanh nghiệp, gi&uacute;p doanh nghiệp dễ d&agrave;ng đ&aacute;nh gi&aacute; sinh vi&ecirc;n thực tập tại đơn vị m&igrave;nh một c&aacute;ch ch&iacute;nh x&aacute;c, hiệu quả dựa tr&ecirc;n c&aacute;c ti&ecirc;u ch&iacute; c&oacute; sẵn.</p>

<p style="text-align:justify"><strong><em>(ii) Đối với c&aacute;c Khoa, bộ m&ocirc;n chuy&ecirc;n m&ocirc;n v&agrave; giảng vi&ecirc;n</em></strong></p>

<p style="text-align:justify">- Chủ động, tăng cường hơn nữa việc hợp t&aacute;c với c&aacute;c doanh nghiệp c&oacute; uy t&iacute;n, thương hiệu, từ đ&oacute; cung cấp để sinh vi&ecirc;n đăng k&yacute; trước mỗi kỳ thực tập.</p>

<p style="text-align:justify">- Tạo mối li&ecirc;n kết, tương t&aacute;c giữa Khoa, bộ m&ocirc;n chuy&ecirc;n m&ocirc;n v&agrave; giảng vi&ecirc;n hướng dẫn với doanh nghiệp để hiểu r&otilde; qu&aacute; tr&igrave;nh thực tập của sinh vi&ecirc;n.</p>

<p style="text-align:justify">- Mỗi khoa chuy&ecirc;n m&ocirc;n cần x&acirc;y dựng bộ ti&ecirc;u ch&iacute; nhằm đ&aacute;nh gi&aacute; mức độ thực hiện c&ocirc;ng việc của giảng vi&ecirc;n hướng dẫn v&agrave; kết quả hoạt động thực tập, thực h&agrave;nh trải nghiệm thực tiễn của sinh vi&ecirc;n, qua đ&oacute; tổ chức tổng kết, đ&uacute;c r&uacute;t kinh nghiệm, chỉ r&otilde; kết quả c&ocirc;ng việc để t&igrave;m ra hướng khắc phục cho c&aacute;c đợt thực tập tiếp theo.</p>

<p style="text-align:justify">- Thiết kế thời gian thực tập, trải nghiệm thực tế linh hoạt v&agrave; ph&ugrave; hợp với đặc điểm sản xuất kinh doanh của doanh nghiệp v&agrave; ng&agrave;nh nghề đ&agrave;o tạo; bổ sung thời lượng thực tập, thực h&agrave;nh thực tế doanh nghiệp trong từng năm học b&ecirc;n cạnh c&aacute;c hoạt động hiện nay, gi&uacute;p sinh vi&ecirc;n được l&agrave;m quen v&agrave; trải nghiệm nhiều hơn nữa với thực tiễn.</p>

<p style="text-align:justify">- Quy định chi tiết hơn về c&aacute;c vị tr&iacute; thực tập tại doanh nghiệp của sinh vi&ecirc;n cho từng đợt thực tập v&agrave; l&agrave;m phong ph&uacute; c&aacute;c vị tr&iacute; thực tập. Đối với chương tr&igrave;nh thực h&agrave;nh, thực tập doanh nghiệp của khối ng&agrave;nh kinh tế x&atilde; hội cần quan t&acirc;m hơn đến ph&aacute;t triển năng lực chuy&ecirc;n m&ocirc;n v&agrave; khối ng&agrave;nh kỹ thuật l&agrave; kỹ năng mềm cho sinh vi&ecirc;n.</p>

<p style="text-align:justify">- Giảng vi&ecirc;n hướng dẫn cần tổ chức c&aacute;c buổi định hướng, hướng dẫn cụ thể, chi tiết về học phần thực tập trước khi đi thực tập, trải nghiệm thực tế cho sinh vi&ecirc;n, kiểm so&aacute;t thường xuy&ecirc;n li&ecirc;n tục qu&aacute; tr&igrave;nh thực tập v&agrave; thực h&agrave;nh tại doanh nghiệp.</p>

<p style="text-align:justify">- Tiếp tục tuy&ecirc;n truyền, gi&aacute;o dục gi&uacute;p sinh vi&ecirc;n nhận thức đ&uacute;ng vai tr&ograve; của mỗi đợt thực tập tại doanh nghiệp để sinh vi&ecirc;n c&oacute; th&aacute;i độ đ&uacute;ng đắn khi đi thực tập, nỗ lực r&egrave;n luyện, t&iacute;ch lũy kinh nghiệm trong qu&aacute; tr&igrave;nh thực tập./.</p>
', CAST(N'2021-12-12T20:03:05.053' AS DateTime), N'/App_Dataimages/t73819.jpg', 1, 7, 5)
SET IDENTITY_INSERT [dbo].[articles] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (1, N'Lãnh đạo')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (2, N'Phòng ban')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (3, N'Giới thiệu')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (4, N'Tin tức')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (5, N'Thông báo')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (6, N'Sự kiện')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (7, N'Góc nhìn HaUI')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (8, N'Hoạt động sinh viên')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[comments] ON 

INSERT [dbo].[comments] ([cmt_id], [article_id], [cmt_cotnent], [create_time], [email]) VALUES (1, 2, N'Bài viết thật hữu ích!', CAST(N'2021-07-02T09:15:00.000' AS DateTime), N'hatu@gmail.com')
INSERT [dbo].[comments] ([cmt_id], [article_id], [cmt_cotnent], [create_time], [email]) VALUES (2, 1, N'Bài viết thật hữu ích với mọi người!', CAST(N'2021-07-02T09:16:00.000' AS DateTime), N'hatu@gmail.com')
INSERT [dbo].[comments] ([cmt_id], [article_id], [cmt_cotnent], [create_time], [email]) VALUES (3, 1, N'Thật tuyệt!', CAST(N'2021-07-02T09:19:00.000' AS DateTime), N'hatu@gmail.com')
INSERT [dbo].[comments] ([cmt_id], [article_id], [cmt_cotnent], [create_time], [email]) VALUES (25, 16, N'abc', CAST(N'2021-12-18T18:01:49.640' AS DateTime), N'thichcakhia421@gmail.com')
INSERT [dbo].[comments] ([cmt_id], [article_id], [cmt_cotnent], [create_time], [email]) VALUES (27, 17, N'abc', CAST(N'2021-12-20T18:36:35.043' AS DateTime), N'hangoctua1k5@gmail.com')
SET IDENTITY_INSERT [dbo].[comments] OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (1, N'admin     ')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (2, N'member    ')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [usename], [email], [password], [full_name], [avatar], [sefl_des], [group_id]) VALUES (1, N'admin', N'admin@haui.com.vn', N'12345', N'Adminstrator', N'/App_Dataimages/admin.jpg', N'1234', 1)
INSERT [dbo].[users] ([user_id], [usename], [email], [password], [full_name], [avatar], [sefl_des], [group_id]) VALUES (2, N'Tú', N'hatu@haui.com.vn', N'12345', N'Hà Ngọc Tú', N'/App_Dataimages/tinh%20yeu%20ngot%20lim.jpg', N'hello', 2)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  StoredProcedure [dbo].[accountlogin]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[accountlogin](
	@email nvarchar(256),
	@password nvarchar(MAX))
as 
begin
	declare @count int
	declare @res bit
	select @count = count(*) from users where email = @email and password = @password
	if @count >= 1
		set @res = 1
	else 
		set @res = 0
	select @res
end
GO
/****** Object:  StoredProcedure [dbo].[Article_CommentMax]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Article_CommentMax]
as
begin
	Select title
	from articles inner join comments on articles.article_id=comments.article_id
	group by title
	having count(title)= (SELECT  COUNT(*) AS SOLUONG
	FROM comments
	group by article_id
	HAVING COUNT(*) >= ALL(
							SELECT COUNT(*)
							FROM comments
							GROUP BY article_id))
end
GO
/****** Object:  StoredProcedure [dbo].[Article_LuotXemMax]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Article_LuotXemMax]
as
begin
	Select title
	from articles 
	where luotxem >= (SELECT MAX(LuotXem)
							FROM articles)
end
GO
/****** Object:  StoredProcedure [dbo].[Count_ArticleMax]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Count_ArticleMax]
as
begin
	SELECT  COUNT(*) AS SOLUONG
	FROM articles
	group by user_id
	HAVING COUNT(*) >= ALL(
							SELECT COUNT(*)
							FROM articles
							GROUP BY user_id)
end
GO
/****** Object:  StoredProcedure [dbo].[countRowArticles]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowArticles]
as
begin
	SELECT COUNT(*) FROM articles
	end
GO
/****** Object:  StoredProcedure [dbo].[countRowCategories]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowCategories]
as
begin
	SELECT COUNT(*) FROM categories
	end
GO
/****** Object:  StoredProcedure [dbo].[countRowCmt]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowCmt]
as
begin
	SELECT COUNT(*) FROM comments
	end
GO
/****** Object:  StoredProcedure [dbo].[countRowUsers]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowUsers]
as
begin
	SELECT COUNT(*) FROM users
	end
GO
/****** Object:  StoredProcedure [dbo].[delete_article]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_article](@art_id INT)
AS
   DELETE FROM articles
   WHERE article_id = @art_id
GO
/****** Object:  StoredProcedure [dbo].[delete_cate]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_cate](@cateid INT)
AS
   DELETE FROM categories
   WHERE cate_id = @cateid
GO
/****** Object:  StoredProcedure [dbo].[delete_cmt]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_cmt](@cmt_id INT)
AS
   DELETE FROM comments
   WHERE cmt_id = @cmt_id
GO
/****** Object:  StoredProcedure [dbo].[delete_user]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_user](@userid INT)
AS
   DELETE FROM users
   WHERE user_id = @userid
GO
/****** Object:  StoredProcedure [dbo].[findArticles]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[findArticles](
	@title nvarchar(max)
)
as
begin
	select * from articles where title like '%@title%'
	end
GO
/****** Object:  StoredProcedure [dbo].[GetAll_Articles]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_Articles]
as
select * from articles
GO
/****** Object:  StoredProcedure [dbo].[GetAll_Categories]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAll_Categories]
as 
select * from categories
GO
/****** Object:  StoredProcedure [dbo].[GetAll_Comments]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_Comments]
as 
select * from comments
GO
/****** Object:  StoredProcedure [dbo].[GetAll_UserGroup]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_UserGroup]
as 
select * from UserGroup
GO
/****** Object:  StoredProcedure [dbo].[GetAll_Users]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_Users]
as 
select * from users
GO
/****** Object:  StoredProcedure [dbo].[getArtById]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getArtById](
	@id int
)
as
begin
	select * from articles where article_id = @id
	end
GO
/****** Object:  StoredProcedure [dbo].[getCateById]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getCateById](
	@var_id int
)
as
begin
	select * from categories where cate_id = @var_id
	end
GO
/****** Object:  StoredProcedure [dbo].[getCommentByArticleId]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getCommentByArticleId](
	@article_id int
)
as
begin
	select * from comments where article_id = @article_id
	end
GO
/****** Object:  StoredProcedure [dbo].[getUserByEmail]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getUserByEmail](
	@var_email nvarchar(max)
)
as
begin
	select * from users where email = @var_email
	end
GO
/****** Object:  StoredProcedure [dbo].[getUserById]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getUserById](
	@var_id int
)
as
begin
	select * from users where user_id = @var_id
	end
GO
/****** Object:  StoredProcedure [dbo].[insert_article]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_article](
	@title nvarchar(max),
	@textbody nvarchar(max),
	@image nvarchar(max),
	@user_id int,
	@cate_id int,
	@luotXem int
)
as
begin
	insert into articles(title,textbody,create_time,image,user_id,cate_id,LuotXem) values(@title,@textbody,GETDATE(),@image, @user_id,@cate_id,@luotXem)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_category]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_category](
	@name nvarchar(MAX)
)
as
begin
	insert into categories(cate_name) values(@name)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_comment]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_comment](
	@email nvarchar(max),
	@article_id int,
	@cmt_cotnent nvarchar(max)
)
as
begin
	insert into comments(article_id,cmt_cotnent,create_time,email) values(@article_id,@cmt_cotnent,GETDATE(),@email)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_user]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_user](
	@username nvarchar(max),
	@email nvarchar(256),
	@password nvarchar(max),
	@full_name nvarchar(max),
	@avatar nvarchar(max),
	@sefl_des nvarchar(max),
	@group_id int
)
as
begin
	insert into users (usename,email,password,full_name,avatar,sefl_des,group_id) 
	values(@username,@email,@password,@full_name,@avatar,@sefl_des,@group_id)
end
GO
/****** Object:  StoredProcedure [dbo].[update_article]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_article](
	@id int,
	@title nvarchar(max),
	@textbody nvarchar(max),
	@image nvarchar(max),
	@cateid nvarchar(max)
)
as
begin
	update articles set title = @title, textbody = @textbody, image= @image, cate_id= @cateid  
	where article_id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[update_article1]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_article1](
	@id int,
	@title nvarchar(max),
	@textbody nvarchar(max),
	@image nvarchar(max),
	@userid int,
	@cateid int
)
as
begin
	update articles set title = @title, textbody = @textbody, image= @image, user_id=@userid, cate_id= @cateid  
	where article_id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[update_article2]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_article2](
	@id int,
	@LuotXem int
)
as
begin
	update articles set LuotXem=@LuotXem  
	where article_id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[update_cate]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_cate](
	@var_id int,
	@var_name nvarchar(max)
)
as
begin
	UPDATE categories
	SET cate_name = @var_name
	WHERE cate_id = @var_id;
end
GO
/****** Object:  StoredProcedure [dbo].[update_user]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_user](
	@user_id int,
	@user_name nvarchar(max),
	@emmail nvarchar(256),
	@password nvarchar(max),
	@full_name nvarchar(max),
	@avatar nvarchar(max),
	@sefl_des nvarchar(max),
	@group_id int
)
as
begin
	UPDATE users
	SET usename = @user_name,
		email=@emmail,
		password= @password,
		avatar= @avatar,
		sefl_des=@sefl_des,
		full_name=@full_name,
		group_id=@group_id
	WHERE user_id = @user_id;
end
GO
/****** Object:  StoredProcedure [dbo].[update_user1]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_user1](
	@user_id int,
	@user_name nvarchar(max),
	@emmail nvarchar(256),
	@password nvarchar(max),
	@full_name nvarchar(max),
	@avatar nvarchar(max),
	@sefl_des nvarchar(max)
)
as
begin
	UPDATE users
	SET usename = @user_name,
		email=@emmail,
		password= @password,
		avatar= @avatar,
		sefl_des=@sefl_des,
		full_name=@full_name
	WHERE user_id = @user_id;
end
GO
/****** Object:  StoredProcedure [dbo].[User_ArticleMax]    Script Date: 31/12/2021 22:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[User_ArticleMax]
as
begin
	Select usename
	from articles inner join users on articles.user_id=users.user_id
	group by usename
	having count(article_id)= (SELECT  COUNT(*) AS SOLUONG
	FROM articles
	group by user_id
	HAVING COUNT(*) >= ALL(
							SELECT COUNT(*)
							FROM articles
							GROUP BY user_id))
end
GO
