# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
GST_ORG_MODULE=gst-plugins-bad

inherit gstreamer-meson

DESCRIPTION="openaptx plugin for GStreamer"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	|| (
		>=media-libs/libfreeaptx-0.1.1[${MULTILIB_USEDEP}]
		=media-libs/libopenaptx-0.2.0*[${MULTILIB_USEDEP}]
	)
"
DEPEND="${RDEPEND}"

# Fixes backported to 1.20.0, to be removed in 1.20.1
PATCHES=(
	"${FILESDIR}/gst-plugins-openaptx-1.20.0-freeaptx.patch"
)
