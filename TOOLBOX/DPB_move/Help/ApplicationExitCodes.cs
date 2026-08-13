namespace DreamPoeBot.Loki.Game
{
    /// <summary>
    /// Process exit codes exposed through <c>LokiPoe.ApplicationExitCode</c>.
    /// </summary>
    public enum ApplicationExitCodes
    {
        /// <summary>The application completed without reporting an error.</summary>
        None = 0,

        /// <summary>The running Path of Exile version is not supported.</summary>
        UnsupportedClientVersion = 1,

        /// <summary>The required offsets are not available.</summary>
        OffsetsMissing = 2,

        /// <summary>A required updater component was not found.</summary>
        UpdaterNotFound = 3,

        /// <summary>The updater failed before the update could be completed.</summary>
        UpdateException = 4,

        /// <summary>DreamPoeBot is exiting so a verified update can be applied.</summary>
        Updating = 5,

        /// <summary>DreamPoeBot is restarting.</summary>
        Restarting = 6,

        /// <summary>Content compilation errors were encountered.</summary>
        CompileErrors = 7,

        /// <summary>Authentication failed.</summary>
        AuthError = 8,

        /// <summary>Content loading errors were encountered.</summary>
        LoadErrors = 9,

        /// <summary>An unknown error occurred. Review the application log.</summary>
        Unknown = 998,

        /// <summary>The application cannot run because a prerequisite is missing.</summary>
        MissingPrerequisites = 999
    }
}
