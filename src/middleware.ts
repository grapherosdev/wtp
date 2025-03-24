import { NextRequest } from "next/server";
import { getSupabaseReqResClient } from "./supabase-utils/getResReqClient";

export async function middleware(request: NextRequest) {
  const { supabase, response } = getSupabaseReqResClient({ request });

  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};
