<template>
    <div class="grid">
        <template v-for="(color, index) in colors" :key="index">
            <div class="colorName">
                {{ color.name }}
            </div>
            <template v-for="(c, x) in color.colors" :key="x">
                <div class="colorInfo" v-if="x !== 'DEFAULT'">
                    <div class="box" :style="`--color: ${c}`" @click="(e) => copyColorCode(e, `${c}`)"></div>
                    <span class="colorShade">{{ x }}</span>
                    <span class="colorCode">{{ c }}</span>
                </div>
            </template>

        </template>
    </div>
</template>

<style scoped>
.grid {
    display: grid;
    grid-template-columns: repeat(11, 1fr);
    max-width: 100%;
    overflow-x: auto;
    overflow-y: visible;
    padding-top: 16px;
    gap: 4px;
}

.box {
    display: block;
    position: relative;
    background-color: var(--color);
    height: 35px;
    border-radius: 4px;
    cursor: pointer;
    border: 1px solid #ffffff1a;
}

.colorInfo {
    padding: 4px;
    margin-bottom: 12px;
}

.colorName {
    font-size: 14px;
    height: 40px;
    display: grid;
    line-height: 1;
    align-items: center;
}

.colorCode {
    display: block;
    font-size: 10px;
    line-height: 1.4;
}

.colorShade {
    display: block;
    font-size: 12px;
    font-weight: 600;
    line-height: 1.4;
    margin-top: 4px;
}
</style>

<script setup>

const copyColorCode = async (e, code) => {
    const alertEl = document.createElement('span');
    alertEl.style.position = "absolute";
    alertEl.style.display = "block";
    alertEl.style.left = "50%";
    alertEl.style.transform = "translate(-50%,-100%)";
    alertEl.style.backgroundColor = "#6366F1";
    alertEl.style.color = "white";
    alertEl.style.fontSize = "11px";
    alertEl.style.padding = "4px 8px";
    alertEl.style.borderRadius = "4px";
    alertEl.style.lineHeight = 1.3;
    alertEl.innerText = "Copied!";
    e.target.append(alertEl);
    await navigator.clipboard.writeText(code);

    setTimeout(function () {
        alertEl.remove();
    }, 3000);

}

const colors = [
    {
        name: "Slate",
        colors: {
            "DEFAULT": "#64748b",
            "50": "#f8fafc",
            "100": "#f1f5f9",
            "200": "#e2e8f0",
            "300": "#cbd5e1",
            "400": "#94a3b8",
            "500": "#64748b",
            "600": "#475569",
            "700": "#334155",
            "800": "#1e293b",
            "900": "#0f172a",
        }
    },
    {
        name: "Gray",
        colors: {
            "DEFAULT": "#6b7280",
            "50": "#f9fafb",
            "100": "#f3f4f6",
            "200": "#e5e7eb",
            "300": "#d1d5db",
            "400": "#9ca3af",
            "500": "#6b7280",
            "600": "#4b5563",
            "700": "#374151",
            "800": "#1f2937",
            "900": "#111827",
        }
    },
    {
        name: "Zinc",
        colors: {
            "DEFAULT": "#71717a",
            "50": "#fafafa",
            "100": "#f4f4f5",
            "200": "#e4e4e7",
            "300": "#d4d4d8",
            "400": "#a1a1aa",
            "500": "#71717a",
            "600": "#52525b",
            "700": "#3f3f46",
            "800": "#27272a",
            "900": "#18181b",
        }
    },
    {
        name: "Neutral",
        colors: {
            "DEFAULT": "#737373",
            "50": "#fafafa",
            "100": "#f5f5f5",
            "200": "#e5e5e5",
            "300": "#d4d4d4",
            "400": "#a3a3a3",
            "500": "#737373",
            "600": "#525252",
            "700": "#404040",
            "800": "#262626",
            "900": "#171717",
        }
    },
    {
        name: "Stone",
        colors: {
            "DEFAULT": "#78716c",
            "50": "#fafaf9",
            "100": "#f5f5f4",
            "200": "#e7e5e4",
            "300": "#d6d3d1",
            "400": "#a8a29e",
            "500": "#78716c",
            "600": "#57534e",
            "700": "#44403c",
            "800": "#292524",
            "900": "#1c1917",
        }
    },
    {
        name: "Red",
        colors: {
            "DEFAULT": "#EF4444",
            "50": "#FEF2F2",
            "100": "#FEE2E2",
            "200": "#FECACA",
            "300": "#FCA5A5",
            "400": "#F87171",
            "500": "#EF4444",
            "600": "#DC2626",
            "700": "#B91C1C",
            "800": "#991B1B",
            "900": "#7F1D1D",
        }
    },
    {
        name: "Orange",
        colors: {
            "DEFAULT": "#F97316",
            "50": "#FFF7ED",
            "100": "#FFEDD5",
            "200": "#FED7AA",
            "300": "#FDBA74",
            "400": "#FB923C",
            "500": "#F97316",
            "600": "#EA580C",
            "700": "#C2410C",
            "800": "#9A3412",
            "900": "#7C2D12",
        }
    },
    {
        name: "Amber",
        colors: {
            "DEFAULT": "#F59E0B",
            "50": "#FFFBEB",
            "100": "#FEF3C7",
            "200": "#FDE68A",
            "300": "#FCD34D",
            "400": "#FBBF24",
            "500": "#F59E0B",
            "600": "#D97706",
            "700": "#B45309",
            "800": "#92400E",
            "900": "#78350F",
        }
    },
    {
        name: "Yellow",
        colors: {
            "DEFAULT": "#EAB308",
            "50": "#FEFCE8",
            "100": "#FEF9C3",
            "200": "#FEF08A",
            "300": "#FDE047",
            "400": "#FACC15",
            "500": "#EAB308",
            "600": "#CA8A04",
            "700": "#A16207",
            "800": "#854D0E",
            "900": "#713F12",
        }
    },
    {
        name: "Lime",
        colors: {
            "DEFAULT": "#84CC16",
            "50": "#F7FEE7",
            "100": "#ECFCCB",
            "200": "#D9F99D",
            "300": "#BEF264",
            "400": "#A3E635",
            "500": "#84CC16",
            "600": "#65A30D",
            "700": "#4D7C0F",
            "800": "#3F6212",
            "900": "#365314",
        }
    },
    {
        name: "Green",
        colors: {
            "DEFAULT": "#22C55E",
            "50": "#F0FDF4",
            "100": "#DCFCE7",
            "200": "#BBF7D0",
            "300": "#86EFAC",
            "400": "#4ADE80",
            "500": "#22C55E",
            "600": "#16A34A",
            "700": "#15803D",
            "800": "#166534",
            "900": "#14532D",
        }
    },
    {
        name: "Emerald",
        colors: {
            "DEFAULT": "#10B981",
            "50": "#ECFDF5",
            "100": "#D1FAE5",
            "200": "#A7F3D0",
            "300": "#6EE7B7",
            "400": "#34D399",
            "500": "#10B981",
            "600": "#059669",
            "700": "#047857",
            "800": "#065F46",
            "900": "#064E3B",
        }
    },
    {
        name: "Teal",
        colors: {
            "DEFAULT": "#14B8A6",
            "50": "#F0FDFA",
            "100": "#CCFBF1",
            "200": "#99F6E4",
            "300": "#5EEAD4",
            "400": "#2DD4BF",
            "500": "#14B8A6",
            "600": "#0D9488",
            "700": "#0F766E",
            "800": "#115E59",
            "900": "#134E4A",
        }
    },
    {
        name: "Cyan",
        colors: {
            "DEFAULT": "#06B6D4",
            "50": "#ECFEFF",
            "100": "#CFFAFE",
            "200": "#A5F3FC",
            "300": "#67E8F9",
            "400": "#22D3EE",
            "500": "#06B6D4",
            "600": "#0891B2",
            "700": "#0E7490",
            "800": "#155E75",
            "900": "#164E63",
        }
    },
    {
        name: "Sky",
        colors: {
            "DEFAULT": "#0EA5E9",
            "50": "#f0f9ff",
            "100": "#E0F2FE",
            "200": "#BAE6FD",
            "300": "#7DD3FC",
            "400": "#38BDF8",
            "500": "#0EA5E9",
            "600": "#0284C7",
            "700": "#0369A1",
            "800": "#075985",
            "900": "#0C4A6E",
        }
    },
    {
        name: "Blue",
        colors: {
            "DEFAULT": "#3B82F6",
            "50": "#EFF6FF",
            "100": "#DBEAFE",
            "200": "#BFDBFE",
            "300": "#93C5FD",
            "400": "#60A5FA",
            "500": "#3B82F6",
            "600": "#2563EB",
            "700": "#1D4ED8",
            "800": "#1E40AF",
            "900": "#1E3A8A",
        }
    },
    {
        name: "Indigo",
        colors: {
            "DEFAULT": "#6366F1",
            "50": "#EEF2FF",
            "100": "#E0E7FF",
            "200": "#C7D2FE",
            "300": "#A5B4FC",
            "400": "#818CF8",
            "500": "#6366F1",
            "600": "#4F46E5",
            "700": "#4338CA",
            "800": "#3730A3",
            "900": "#312E81",
        }
    },
    {
        name: "Violet",
        colors: {
            "DEFAULT": "#8B5CF6",
            "50": "#F5F3FF",
            "100": "#EDE9FE",
            "200": "#DDD6FE",
            "300": "#C4B5FD",
            "400": "#A78BFA",
            "500": "#8B5CF6",
            "600": "#7C3AED",
            "700": "#6D28D9",
            "800": "#5B21B6",
            "900": "#4C1D95",
        }
    },
    {
        name: "Purple",
        colors: {
            "DEFAULT": "#A855F7",
            "50": "#FAF5FF",
            "100": "#F3E8FF",
            "200": "#E9D5FF",
            "300": "#D8B4FE",
            "400": "#C084FC",
            "500": "#A855F7",
            "600": "#9333EA",
            "700": "#7E22CE",
            "800": "#6B21A8",
            "900": "#581C87",
        }
    },
    {
        name: "Fuchsia",
        colors: {
            "DEFAULT": "#D946EF",
            "50": "#FDF4FF",
            "100": "#FAE8FF",
            "200": "#F5D0FE",
            "300": "#F0ABFC",
            "400": "#E879F9",
            "500": "#D946EF",
            "600": "#C026D3",
            "700": "#A21CAF",
            "800": "#86198F",
            "900": "#701A75",
        }
    },
    {
        name: "Pink",
        colors: {
            "DEFAULT": "#EC4899",
            "50": "#FDF2F8",
            "100": "#FCE7F3",
            "200": "#FBCFE8",
            "300": "#F9A8D4",
            "400": "#F472B6",
            "500": "#EC4899",
            "600": "#DB2777",
            "700": "#BE185D",
            "800": "#9D174D",
            "900": "#831843",
        }
    },
    {
        name: "Rose",
        colors: {
            "DEFAULT": "#F43F5E",
            "50": "#FFF1F2",
            "100": "#FFE4E6",
            "200": "#FECDD3",
            "300": "#FDA4AF",
            "400": "#FB7185",
            "500": "#F43F5E",
            "600": "#E11D48",
            "700": "#BE123C",
            "800": "#9F1239",
            "900": "#881337",
        }
    }
]

</script>
