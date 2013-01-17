project "ICSharpCode.Decompiler"
    
    SetupManagedDependencyProject()
    
    flags { "unsafe" }

    kind "SharedLib"
    language "C#"
    
    files 
    { 
        "**.cs" 
    }
    
    excludes
    {
        "./Tests/**"
    }
    
    links
    {
        "ICSharpCode.NRefactory",
        "ICSharpCode.NRefactory.CSharp",
        "Mono.Cecil",
        "System",
        "System.Core",
        "System.Xml",
        "System.Xml.Linq",
    }