import { Header } from '@/components/layout/header'
import { DashboardSidebar, DashboardMobileNav } from '@/components/layout/dashboard-sidebar'

export default function DashboardLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <>
      <Header />
      <div className="flex min-h-[calc(100vh-4rem)]">
        <DashboardSidebar />
        <div className="flex-1">
          <DashboardMobileNav />
          <main className="p-6">{children}</main>
        </div>
      </div>
    </>
  )
}
