using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xenko.Core.Mathematics;
using Xenko.Input;
using Xenko.Engine;

namespace WorldClock
{
    public class Site : SyncScript
    {
        // Declared public member fields and properties will show in the game studio
        public float degreesLat;
        public float degreesLong;
        public string Name;
        public Site capital;
        public List<Site> subSites;

        public override void Start()
        {
            // Initialization of the script.
        }

        public override void Update()
        {
            Entity.Transform.Rotation = Quaternion.RotationZ(DegreesLat * 0.01745329252f) * Quaternion.RotationY(DegreesLong * 0.01745329252f);
           // Log.Info("Site rotation xyz = " + Entity.Transform.Rotation.X +"," + Entity.Transform.Rotation.Y +"," +Entity.Transform.Rotation.Z);
            // Do stuff every new frame
            
            if(Name != null && Name == "London" && Entity != null)
            {           
                
                Log.Info("Site roation = " + Entity.Transform.Rotation.X + ","+ Entity.Transform.Rotation.Y + "," + Entity.Transform.Rotation.Z);
            }
            }
        
        public float DegreesLat
        {
            get
            {
                return degreesLat;
            }
        }
        public float DegreesLong
        {
            get
            {
                return degreesLong;
            }
        }
        
        public float Offset
        {
        get;
        set;
        }
        
        public string Blurb
        {
        get;
        set;
        }
    }
}
