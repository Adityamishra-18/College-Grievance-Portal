<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Staff Dashboard</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

    <style>

        .dashboard-layout {
            min-height: calc(100vh - 72px);
            display: flex;
        }

        .sidebar {
            width: 240px;
            background: #172554;
            color: white;
            padding: 25px 15px;
            flex-shrink: 0;
        }

        .sidebar-title {
            font-size: 18px;
            font-weight: 700;
            padding: 0 15px 25px;
            border-bottom: 1px solid rgba(255,255,255,0.15);
            margin-bottom: 20px;
        }

        .sidebar-menu {
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .sidebar-menu a {
            color: #cbd5e1;
            padding: 12px 15px;
            border-radius: 7px;
            font-size: 14px;
            transition: 0.2s;
        }

        .sidebar-menu a:hover,
        .sidebar-menu a.active {
            background: #2563eb;
            color: white;
        }

        .sidebar-menu .logout {
            margin-top: 20px;
            color: #fca5a5;
        }

        .dashboard-content {
            flex: 1;
            padding: 35px 45px;
        }

        .dashboard-header {
            margin-bottom: 30px;
        }

        .dashboard-header h1 {
            font-size: 30px;
            color: #111827;
            margin-bottom: 5px;
        }

        .dashboard-header p {
            color: #64748b;
        }

        .stat-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 30px;
        }

        .stat-card {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 22px;
        }

        .stat-title {
            color: #64748b;
            font-size: 14px;
            margin-bottom: 8px;
        }

        .stat-number {
            font-size: 30px;
            font-weight: 700;
            color: #172554;
        }

        .dashboard-section-title {
            font-size: 21px;
            margin-bottom: 18px;
            color: #111827;
        }

        .action-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .action-card {
            background: white;
            border: 1px solid #e5e7eb;
            border-radius: 10px;
            padding: 25px;
        }

        .action-card h3 {
            margin-bottom: 8px;
            color: #172033;
        }

        .action-card p {
            color: #64748b;
            margin-bottom: 18px;
            font-size: 14px;
        }

        @media (max-width: 800px) {

            .dashboard-layout {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
            }

            .sidebar-menu {
                flex-direction: row;
                flex-wrap: wrap;
            }

            .stat-grid {
                grid-template-columns: 1fr;
            }

            .action-grid {
                grid-template-columns: 1fr;
            }

            .dashboard-content {
                padding: 25px 20px;
            }

        }

    </style>

</head>

<body>

<nav class="nav">

    <div class="brand">
        🎓 College Grievance Portal
    </div>

    <div class="nav-links">

        <span style="color:#64748b;">
            Staff
        </span>

    </div>

</nav>


<div class="dashboard-layout">

    <!-- SIDEBAR -->

    <aside class="sidebar">

        <div class="sidebar-title">
            Staff Panel
        </div>

        <div class="sidebar-menu">

            <a class="active"
               href="${pageContext.request.contextPath}/staff/dashboard.jsp">
                Dashboard
            </a>

            <a href="#">
                Assigned Complaints
            </a>

            <a href="#">
                Update Status
            </a>

            <a href="#">
                Resolved Complaints
            </a>

            <a href="#">
                Complaint History
            </a>

            <a class="logout"
               href="${pageContext.request.contextPath}/index.jsp">
                Logout
            </a>

        </div>

    </aside>


    <!-- MAIN CONTENT -->

    <main class="dashboard-content">

        <div class="dashboard-header">

            <h1>Staff Dashboard</h1>

            <p>
                Manage complaints assigned to you and update their progress.
            </p>

        </div>


        <!-- STATISTICS -->

        <div class="stat-grid">

            <div class="stat-card">

                <div class="stat-title">
                    Assigned Complaints
                </div>

                <div class="stat-number">
                    0
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-title">
                    Pending Complaints
                </div>

                <div class="stat-number">
                    0
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-title">
                    Resolved Complaints
                </div>

                <div class="stat-number">
                    0
                </div>

            </div>

        </div>


        <!-- ACTIONS -->

        <h2 class="dashboard-section-title">
            Complaint Management
        </h2>


        <div class="action-grid">


            <div class="action-card">

                <h3>
                    📋 Assigned Complaints
                </h3>

                <p>
                    View all complaints assigned to you
                    by the administrator.
                </p>

                <a class="btn"
                   href="#">
                    View Complaints
                </a>

            </div>


            <div class="action-card">

                <h3>
                    🔄 Update Complaint
                </h3>

                <p>
                    Update complaint status and add
                    staff remarks.
                </p>

                <a class="btn outline"
                   href="#">
                    Update Status
                </a>

            </div>


            <div class="action-card">

                <h3>
                    ✓ Resolved Complaints
                </h3>

                <p>
                    View complaints that have been
                    successfully resolved.
                </p>

                <a class="btn outline"
                   href="#">
                    View Resolved
                </a>

            </div>


            <div class="action-card">

                <h3>
                    📜 Complaint History
                </h3>

                <p>
                    Review your previous complaint
                    handling activity.
                </p>

                <a class="btn outline"
                   href="#">
                    View History
                </a>

            </div>


        </div>

    </main>

</div>


<footer>

    © 2026 College Grievance Portal | Staff Panel

</footer>


</body>

</html>