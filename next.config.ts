import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  eslint: {
    ignoreDuringBuilds: true,
  },
  typescript: {
    ignoreBuildErrors: true,
  },
  devIndicators: false,
  redirects: async () => [
    {
      source: "/logout",
      destination: "/auth/logout",
      permanent: true,
    },
  ],
};

export default nextConfig;
