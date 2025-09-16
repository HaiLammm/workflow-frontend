import React from "react";
import SearchSection from "@/components/ui/client/home/SearchSection";
import JobsSection from "@/components/ui/client/home/JobsSection";


const HomePage = () => {
  return (
    <>
      <div className="w-[1520px] mx-auto">
        <SearchSection />
        <JobsSection />

</div>
    </>
  );
};

export default HomePage;
