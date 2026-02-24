export default function Loading() {
  return (
    <div className="max-w-[1440px] mx-auto border-l border-r border-[#1D263B] min-h-screen">
      <div className="p-6 border-b border-[#1D263B]">
        <div className="h-3 w-24 bg-[#141C31] animate-pulse mb-3" />
        <div className="h-8 w-64 bg-[#141C31] animate-pulse" />
      </div>
      <div className="p-6">
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
          {Array.from({ length: 8 }).map((_, i) => (
            <div key={i} className="border border-[#1D263B] p-5">
              <div className="aspect-square bg-[#141C31] mb-4 animate-pulse" />
              <div className="h-3 bg-[#141C31] w-2/3 mb-2 animate-pulse" />
              <div className="h-3 bg-[#141C31] w-1/2 animate-pulse" />
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}
