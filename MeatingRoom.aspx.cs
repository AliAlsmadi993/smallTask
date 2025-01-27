using System;
using System.IO;
using System.Web.UI;

namespace WebApplication7
{
    public partial class MeatingRoom : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load rooms when the page is loaded
            if (!IsPostBack)
            {
                LoadRooms();
            }
        }

        // This method loads the rooms from the file and displays them in the table
        private void LoadRooms()
        {
            string filePath = Server.MapPath("~/App_Data/meetings.txt");

            if (File.Exists(filePath))
            {
                string[] roomLines = File.ReadAllLines(filePath);
                roomsTableBody.InnerHtml = ""; // Clear existing rows

                foreach (string line in roomLines)
                {
                    string[] roomDetails = line.Split(',');

                    if (roomDetails.Length == 4)
                    {
                        string roomId = roomDetails[0];
                        string roomName = roomDetails[1];
                        string roomLocation = roomDetails[2];
                        string roomCapacity = roomDetails[3];

                        // Add each room as a new row in the table
                        roomsTableBody.InnerHtml += $"<tr><td>{roomId}</td><td>{roomName}</td><td>{roomLocation}</td><td>{roomCapacity}</td></tr>";
                    }
                }
            }
            else
            {
                roomsTableBody.InnerHtml = "<tr><td colspan='4'>No rooms available</td></tr>";
            }
        }

        protected void btnGoHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}
