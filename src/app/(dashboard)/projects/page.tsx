"use client";

import { createSupabaseClient } from "@/supabase-utils/client";
import React, { useEffect } from "react";

const Projects = () => {
  useEffect(() => {
    const supabase = createSupabaseClient();
    supabase.storage
      .listBuckets()
      .then((result) => console.log("Bucket List", result));
  });
  return (
    <div className="flex flex-1 flex-col gap-4 p-4 pt-0">all projects</div>
  );
};

export default Projects;
